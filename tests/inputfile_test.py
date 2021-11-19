# -*- coding: utf-8 -*-
"""
Created on Fri Sep  3 10:15:09 2021

@author: Davide Laghi

Copyright 2021, the JADE Development Team. All rights reserved.

This file is part of JADE.

JADE is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

JADE is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with JADE.  If not, see <http://www.gnu.org/licenses/>.
"""
import sys
import os

cp = os.path.dirname(os.path.abspath(__file__))
modules_path = os.path.dirname(cp)
sys.path.insert(1, modules_path)

from inputfile import (InputFile, D1S_Input)
from libmanager import LibManager
from copy import deepcopy

INP_PATH = os.path.join(cp, 'TestFiles/inputfile/test.i')
DIS_INP_PATH = os.path.join(cp, 'TestFiles/inputfile/d1stest.i')

ACTIVATION_FILE = os.path.join(cp, 'TestFiles', 'libmanager',
                               'Activation libs.xlsx')
XSDIR_FILE = os.path.join(cp, 'TestFiles', 'libmanager', 'xsdir')


class TestInputFile:
    testInput = InputFile.from_text(INP_PATH)
    lm = LibManager(XSDIR_FILE, activationfile=ACTIVATION_FILE)

    def test_read_write(self):
        oldtext = self.testInput._to_text()
        # Dump it and re-read it
        dumpfile = 'tmp2.i'
        self.testInput.write(dumpfile)
        newinput = InputFile.from_text(dumpfile)
        # clear
        os.remove(dumpfile)
        newtext = newinput._to_text()
        print(len(newtext))

        assert oldtext == newtext

    def test_translate(self):
        # The test for a correct translation of material card is already done
        # in matreader. here we only check that it goes trough without errors
        newinput = deepcopy(self.testInput)
        newinput.translate('00c', self.lm)
        newinput = deepcopy(self.testInput)
        newinput.translate('{"31c": "00c", "70c": "81c"}', self.lm)
        assert True

    def test_get_card_byID(self):
        """
        Test ability to select cards by block and card ID
        """
        examples = [('settings', 'fc234'), ('settings', 'Fmesh254:p'),
                    ('cells', 2), ('surf', 2)]
        last_digits = ['s]\n', '=1\n', '-2\n', '97\n']

        for ID, digits in zip(examples, last_digits):
            card = self.testInput.get_card_byID(ID[0], ID[1])
            print(card.lines[-1])
            assert card.lines[-1][-3:] == digits

        # Test also card not found
        card = self.testInput.get_card_byID('settings', 'Fmesh254:')
        assert card is None

    def test_addlines2card(self):
        """
        test that a new card can be added to the input.
        """
        # modify one card of the official input
        blockID = 'settings'
        cardID = 'FMESH254:p'

        # --- do it with a list of lines
        # add lines
        inp = deepcopy(self.testInput)
        lines = ['FU4 sadadsda\n', '     adasdaasdas\n']
        inp.addlines2card(lines, blockID, cardID, offset_all=False)
        # dump and reread the input
        tmpfile = 'tmp.i'
        inp.write(tmpfile)
        newinp = InputFile.from_text(tmpfile)
        # Remove tmp file
        os.remove(tmpfile)
        # get the new injected card
        card = newinp.get_card_byID('settings', 'FU4')
        assert card is not None
        assert len(card.lines) == 2

        # do it with a text
        # add lines
        inp = deepcopy(self.testInput)
        lines = 'FU4 '+'ad '*120
        inp.addlines2card(lines, blockID, cardID, offset_all=False)
        # dump and reread the input
        tmpfile = 'tmp.i'
        inp.write(tmpfile)
        newinp = InputFile.from_text(tmpfile)
        # Remove tmp file
        os.remove(tmpfile)
        # get the new injected card
        card = newinp.get_card_byID('settings', 'FU4')
        assert card is not None
        assert len(card.lines) == 5

        # check simple adding of a line to existing card
        # add line
        inp = deepcopy(self.testInput)
        lines = 'newlineee'
        card = inp.get_card_byID(blockID, cardID)
        nlines = len(card.lines)
        inp.addlines2card(lines, blockID, cardID)
        # dump and reread the input
        tmpfile = 'tmp.i'
        inp.write(tmpfile)
        newinp = InputFile.from_text(tmpfile)
        # Remove tmp file
        os.remove(tmpfile)
        # get the new injected card
        card = newinp.get_card_byID(blockID, cardID)
        assert card is not None
        assert len(card.lines) == nlines+1


class TestD1S_Input:
    inp = D1S_Input.from_text(DIS_INP_PATH)

    def test_add_track_contribution(self):
        zaids = ['1001', '1002']
        tallyID = 'F124:p'

        # --- Test parents---
        inp = deepcopy(self.inp)
        res = inp.add_track_contribution(tallyID, zaids, who='parent')
        assert res
        # dump and reread the input
        tmpfile = 'tmp.i'
        inp.write(tmpfile)
        newinp = D1S_Input.from_text(tmpfile)
        # Remove tmp file
        os.remove(tmpfile)
        # get the new injected card
        card = newinp.get_card_byID('settings', 'FU124')
        assert card.lines[0] == 'FU124 0 -1001 -1002\n'

        # --- Test daughter---
        inp = deepcopy(self.inp)
        res = inp.add_track_contribution(tallyID, zaids, who='daughter')
        assert res
        # dump and reread the input
        tmpfile = 'tmp.i'
        inp.write(tmpfile)
        newinp = D1S_Input.from_text(tmpfile)
        # Remove tmp file
        os.remove(tmpfile)
        # get the new injected card
        card = newinp.get_card_byID('settings', 'FU124')
        assert card.lines[0] == 'FU124 0 1001 1002\n'


test = TestInputFile()
test.test_read_write()
