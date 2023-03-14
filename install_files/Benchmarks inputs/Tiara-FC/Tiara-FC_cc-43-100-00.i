TIARA Concrete, 43 MeV, 100 cm shield, B. Kos (bor.kos@ijs.si), 2018
c TIARA Concrete, 43 MeV, 100 cm shield
c Bor Kos, JSI, July 2018
c Fission chamber on-axis and 20 cm off-axis
100 6  -2.31      -100:-101:-102 :-103: -104: -105 :(-106 110):
                   (-110 -109 -106.3 104.1 105.1 111):
                   (-111  108 -106.3 104.1 105.1 112):
                   (-112  107 -106.3 104.1 105.1) imp:n=1                      $ Concrete structure
101 1  -7.87      -150 151 imp:n=1                                             $ Beam dump
102 1  -7.08      -200 201 202 2 imp:n=1                                       $ Iron filler (density is 10 % lower than ordinary iron - original documentation assumes a mixutre of iron sand and balls)
103 1  -7.87      -201 2 imp:n=1                                               $ Rotary shutter - iron
104 2  -0.928     -202 2  imp:n=1                                              $ Rotary shutter - polyethylene
105 3  -2.6989    -210 : -211 : -212 imp:n=1                                   $ Trolly (aluminium - assumed, not in benchmark documetation)
106 3  -2.6989    -220 : -221 : -222 : -223 : -224 imp:n=1                     $ Detector support table - aluminium assumed -  FC on-axis
107 5  -0.001205  -225 imp:n=1                                                 $ Fission chamber Centronic FC480/1000 - only dimenssions in benchmark documentation -  FC on-axis 
108 3  -2.6989    -226 : -227 : -228 : -229 : -230 imp:n=1                     $ Detector support table - aluminium assumed -  FC off-axis 20 cm
109 5  -0.001205  -231 imp:n=1                                                 $ Fission chamber Centronic FC480/1000 - only dimenssions in benchmark documentation -  FC off-axis 20 cm
110 6  -2.31      -1000 imp:n=1                                                $ Concrete test shield 
600 0             -600 #100 #101 #102 #103 #104 -2.2 imp:n=1                   $ void
700 5  -0.001205  -600 1000 #100 #105 #106 #107 #108 #109  2.2 imp:n=1         $ air                                                                                                         
601 0              600 imp:n=0                                                 $ Outer space

c -----------------------------------------------------------------------------
c         SURFACES                                                         
c -----------------------------------------------------------------------------
c Source
1   px    0.0                                                                   $ Source plane
c Beam line
2   rcc 0.0 0.0 0.0 396.0 0.0 0.0 5.45  
c Concret stucture
100 box -124.0  250.0 -109.0 0.0 0.0 -200.0 0.0 -500.0 0.0 300.0 0.0 0.0
101 box  176.0  250.0 -119.0 0.0 -500.0 0.0 60.0 0.0 0.0 0.0 0.0 -190.0
102 box  716.0 -250.0 -309.0 0.0 0.0 232.65 0.0 500.0 0.0 -480.0 0.0 0.0
103 box  236.0  250.0  -20.0 0.0 -500.0 0.0 160.0 0.0 0.0 0.0 0.0 -56.35
104 box -124.0 -250.0 -119.0 0.0 190.0 0.0 0.0 0.0 399.065125 640.0 0.0 0.0
105 box -124.0  250.0 -119.0 0.0 -190.0 0.0 0.0 0.0 399.065125 640.0 0.0 0.0
106 box  516.0 -60.0    60.0 0.0 120.0 0.0 0.0 0.0 220.065122 -640.0 0.0 0.0
107 p    16020.908203 0.0 16038.62915 2.5053e+6
108 pz   146.558
109 p   -5443.936157 0.0 -5563.590088 -1.5211e+6
110 px   176
111 px   129.637
112 px   9.65524
c Beam dump
150 box 236.0 -20.0 -119.0 -60.0 0.0 0.0 0.0 40.0 0.0 0.0 0.0 99.0
151 box 206.0 -20.0 -89.0 0.0 40.0 0.0 -30.0 0.0 0.0 0.0 0.0 50.0
c Iron filler (iron balls and iron sand)
200 box 176.0 60.0 60.0 0.0 0.0 -80.0 0.0 -120.0 0.0 220.0 0.0 0.0
c Rotary shutter - iron
201 rcc 183 0 9.08 100.0 0.0 0.0 21.8
c Rotary shutter - polyethylene
202 rcc 283 0 9.08 50.0 0.0 0.0 21.8
c Trolly
210 box 398.5 -60.0 -60.0 0.0 0.0 -10.0 0.0 120.0 0.0 120.0 0.0 0.0
211 rcc 409.718 -60.0 -70.0 0.0 120.0 0.0 6.35
212 rcc 503.650752 -60.0 -70.0 0.0 120.0 0.0 6.35
c Fission cell - on-axis
220 box 501.0 10.0 -1.905 0.0 0.0 -1.000 0.0 -20.0 0.0 40.0 0.0 0.0 $ Detector support table - aluminium assumed
221 rcc 502.0  9.0 -2.905 0.0 0.0 -57.095 0.99
222 rcc 502.0 -9.0 -2.905 0.0 0.0 -57.095 0.99
223 rcc 540.0  9.0 -2.905 0.0 0.0 -57.095 0.99
224 rcc 540.0 -9.0 -2.905 0.0 0.0 -57.095 0.99
225 rcc 501.0  0.0  0.0  10.1 0.0   0.0   1.9049 $ FC cell on-axis 
c Fission cell - off-axis 20 cm
226 box 501.0 -10.0 -1.905 0.0 0.0 -1.000 0.0 -20.0 0.0 40.0 0.0 0.0 $ Detector support table - aluminium assumed
227 rcc 502.0 -11.0 -2.905 0.0 0.0 -57.095 0.99
228 rcc 502.0 -29.0 -2.905 0.0 0.0 -57.095 0.99
229 rcc 540.0 -11.0 -2.905 0.0 0.0 -57.095 0.99
230 rcc 540.0 -29.0 -2.905 0.0 0.0 -57.095 0.99
231 rcc 501.0 -20.0  0.0  10.1 0.0   0.0   1.9049 $ FC cell off-axis 20 cm  
c Outside world
600 box -130 -252 -315 850 0.0 0.0 0.0 504.0 0.0 0.0 0.0 600.0
c Additional iron colimator
c 800
c Shield
1000 box 401.0 -60 -60 100.0 0.0 0.0 0.0 120.0 0.0 0.0 0.0 120.0

c -----------------------------------------------------------------------------
c         MATERIALS
c -----------------------------------------------------------------------------
c Iron shield - atom density, Density ( g /cm3 )= 7.87. Naturan iron from benchmark documetation - Table 1.2 JAERI-Data/Code 96-029
m1   26054. 4.9605E-03
     26056. 7.7869E-02
     26057. 1.7983E-03
     26058. 2.3933E-04
c Polyethylene - atom density, Density ( g /cm3 )= 0.928, Reference: http://physics.nist.gov/PhysRefData/XrayMassCoef/tab2.html    
m2    1001. 0.079855
      6000. 0.039929
c Aluminum - atom density, Density ( g /cm3 )= 2.6989
m3   13027. 0.060238
c Liquid scintillator - atom density, Density ( g /cm3 )= 0.874  "https://www.crystals.saint-gobain.com/sites/imdf.crystals.com/files/documents/sgc-bc501-501a-519-data-sheet_69711.pdf"
m4    1001. 0.0482
      6000. 0.0398
c Dry Air - atom density, Density ( g /cm3 )= 0.001205
m5    6000. 7.4919E-09
      7014. 3.8987E-05
      7015. 1.4243E-07
      8016. 1.0487E-05
      8017. 3.9948E-09
     18036. 7.8407E-10
     18038. 1.4726E-10
     18040. 2.3208E-07
c Concrete from benchmark documentation (per nuclide definition) - atom desnity, Density ( g /cm3 )= 2.31   
m6    1001. 1.49783E-02
      1002. 1.72270E-06 
      8016. 4.18641E-02
      8017. 1.59471E-05
     11023. 1.23000E-03
     12024. 4.89740E-04
     12025. 6.19982E-05
     12026. 6.82614E-05
     13027. 3.12000E-03
     14028. 1.02368E-02
     14029. 5.20043E-04
     14030. 3.43204E-04
     19039. 3.54381E-04
     19040. 4.44605E-08
     19041. 2.55745E-05
     20040. 4.16846E-03
     20042. 2.78219E-05
     20043. 5.80511E-06
     20044. 8.96994E-05
     20046. 1.72004E-07
     20048. 8.04130E-06
     26054. 8.24154E-05
     26056. 1.29373E-03
     26057. 2.98785E-05
     26058. 3.97622E-06
c -----------------------------------------------------------------------------
c         SOURCE
c -----------------------------------------------------------------------------
c Point isotropic neutron source collimated into an -x cone. 
c Particles are confined to a (+x axis) cone whose half-angle
c is acos(0.99990531) = 0.7788 degrees about the x-axis. 
c Angles are with respect to the vector specified by VEC
c
sdef cell=600 pos=0 0 0 erg=d1 par=1 vec=1 0 0 dir=d2
si2 -1  0.99990531  1          $ histogram for cosine bin limits
sp2  0  0.99995265  0.00004735 $ frac. solid angle for each bin
sb2  0. 0.          1.         $ source bias for each bin
si1 H    0.0
         5.5  6.5  7.5  8.5  9.5 10.5 11.5 12.5 13.5 14.5
        15.5 16.5 17.5 18.5 19.5 20.5 21.5 22.5 23.5 24.5
        25.5 26.5 27.5 28.5 29.5 30.5 31.5 32.5 33.5 34.5
        35.5 36.5 37.5 38.5 39.5 40.5 41.5 42.5 43.5 44.5
        45.5
sp1   0.0      0.
        4.405E-2 4.405E-2 4.423E-2 4.483E-2 4.503E-2
        4.390E-2 4.501E-2 4.633E-2 4.931E-2 4.895E-2
        4.885E-2 4.752E-2 4.977E-2 4.611E-2 4.707E-2
        4.749E-2 4.686E-2 4.653E-2 4.488E-2 4.358E-2
        4.097E-2 3.960E-2 3.473E-2 3.491E-2 3.081E-2
        2.639E-2 2.097E-2 1.875E-2 1.490E-2 1.290E-2
        1.083E-2 7.232E-3 1.337E-2 1.377E-1 3.629E-1
        3.677E-1 1.135E-1 5.063E-3 6.359E-4 1.634E-4
c * added by ADVANTG
sb1    0.00000e+00 0.00000e+00 4.60750e-05 6.26698e-05 5.13465e-05 5.38520e-05
       8.23302e-05 1.07780e-04 1.27491e-04 1.72850e-04 2.18544e-04 3.34147e-04
       3.57575e-04 4.58987e-04 5.55703e-04 5.14837e-04 8.32949e-04 8.75099e-04
       8.63490e-04 8.57409e-04 8.27005e-04 2.91567e-03 4.71596e-03 4.55826e-03
       3.99769e-03 4.01841e-03 6.95573e-03 8.86794e-03 7.04663e-03 6.30064e-03
       5.00691e-03 4.33484e-03 3.63925e-03 2.43020e-03 4.49277e-03 4.62719e-02
       2.83063e-01 4.48419e-01 1.38416e-01 6.17445e-03 7.75496e-04 1.99270e-04
c -----------------------------------------------------------------------------
c         TALLIES
c -----------------------------------------------------------------------------  
c Experimental results for fission chambers in SINBAD documentation - Table 41, July 2018
c Table 41, July 2018  Fission rates of 232Th and 238U behind concrete for 43-MeV p-Li neutrons - original document JAERI-Data/Code 97-020 Table 20 gives results in [n/microC]. Results from SINBAD are multiplied by 1E+24 to be consistant with this.
c ------------------------------------------------- 
c   Position    Fission reaction rate(n/microC)
c  Z a   R b       238U               232Th
c  (cm) (cm)     Rate    Error(%)   Rate    Error(%)
c -------------------------------------------------
c    0    0     7.28E+04c (0.40)    3.07E+04  (0.60)
c   25    0     1.15E+04  (1.4)     4.32E+03  (4.8) 
c   50    0     1.26E+03  (5.6)     5.23E+02  (4.9) 
c  100    0     1.98E+01  (8.0)     7.80E+00 (24.)  
c  150    0     1.72E+00 (17.)                     
c                                                 
c    0   20     3.24E+02   (6.4)     6.24E+01 (16.)  
c   25   20     4.78E+02  (15.)      1.48E+02 (12.)  
c   50   20     1.90E+02   (8.4)     7.58E+01  (8.8) 
c  100   20     1.37E+01  (17.)      5.73E+00 (27.)  
c  150   20     1.33E+00  (20.)                     
c -------------------------------------------------
c  a) Thickness of Concrete shields
c  b) Distance from the beam axis
c  c  Read as 7.28 x 10**4
c Absolute normalization of results 8.5854E+10 (=2.17*3150000000*4*3.14=peak to continuum from SINBAD html note, peak flux of neutrons in SINBAD html, solid angle (4 pi))    
c Fisson cross sections from Table 45
F14:n 107
FC14 On-axis 238U FC 
DE14 LIN 
     4.14E-07 1.12E-06 2.38E-06 5.04E-06 1.07E-05 2.26E-05 1.01E-04
     4.54E-04 1.58E-03 3.35E-03 7.10E-03 1.50E-02 3.18E-02 8.65E-02 1.50E-01
     2.24E-01 3.34E-01 4.98E-01 7.43E-01 9.07E-01 1.11E+00 1.35E+00 1.65E+00
     2.02E+00 2.46E+00 3.01E+00 3.68E+00 4.49E+00 5.49E+00 6.70E+00 8.19E+00
     1.00E+01 1.22E+01 1.35E+01 1.49E+01 1.75E+01 1.96E+01 2.25E+01 2.50E+01
     2.75E+01 3.00E+01 3.50E+01 4.00E+01 4.50E+01 5.00E+01 5.50E+01 6.00E+01
     6.50E+01 7.00E+01 8.00E+01 9.00E+01 1.00E+02 1.10E+02 1.20E+02 1.40E+02
     1.60E+02 1.80E+02 2.00E+02 2.25E+02 2.50E+02 2.75E+02 3.00E+02 3.25E+02
     3.50E+02 3.75E+02 4.00E+02 
DF14 LIN 
     6.36560E-06 1.43970E-06 9.34230E-07 6.46250E-07 4.47160E-07 3.09570E-07
     1.81650E-07 8.71180E-08 4.56240E-08 4.00000E-08 6.72000E-06 1.10100E-04
     9.63850E-05 6.12950E-05 3.95290E-05 9.90000E-05 9.61590E-05 2.57700E-04
     1.03340E-03 6.52920E-03 1.89980E-02 5.16710E-02 3.14610E-01 4.95590E-01
     5.49190E-01 5.38620E-01 5.33830E-01 5.61180E-01 5.37130E-01 6.56390E-01
     9.75730E-01 9.90390E-01 9.78590E-01 1.00340E+00 1.13580E+00 1.23440E+00
     1.21330E+00 1.47480E+00 1.57170E+00 1.58130E+00 1.61730E+00 1.66210E+00
     1.67380E+00 1.68560E+00 1.66560E+00 1.64420E+00 1.63950E+00 1.58930E+00
     1.53830E+00 1.52340E+00 1.48450E+00 1.44930E+00 1.41800E+00 1.35830E+00
     1.35160E+00 1.32270E+00 1.31940E+00 1.32440E+00 1.32240E+00 1.32540E+00
     1.33340E+00 1.34340E+00 1.33940E+00 1.32960E+00 1.31280E+00 1.30160E+00
FM14 8.5854E+10
F24:n 107
FC24 On-axis 232Th FC
DE24 LIN
     4.14E-07 1.12E-06 2.38E-06 5.04E-06 1.07E-05 2.26E-05 1.01E-04
     4.54E-04 1.58E-03 3.35E-03 7.10E-03 1.50E-02 3.18E-02 8.65E-02 1.50E-01
     2.24E-01 3.34E-01 4.98E-01 7.43E-01 9.07E-01 1.11E+00 1.35E+00 1.65E+00
     2.02E+00 2.46E+00 3.01E+00 3.68E+00 4.49E+00 5.49E+00 6.70E+00 8.19E+00
     1.00E+01 1.22E+01 1.35E+01 1.49E+01 1.75E+01 1.96E+01 2.25E+01 2.50E+01
     2.75E+01 3.00E+01 3.50E+01 4.00E+01 4.50E+01 5.00E+01 5.50E+01 6.00E+01
     6.50E+01 7.00E+01 8.00E+01 9.00E+01 1.00E+02 1.10E+02 1.20E+02 1.40E+02
     1.60E+02 1.80E+02 2.00E+02 2.25E+02 2.50E+02 2.75E+02 3.00E+02 3.25E+02
     3.50E+02 3.75E+02 4.00E+02 
DF24 LIN
     0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 
     0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00
     0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 1.29510E-05
     1.19900E-04 5.96400E-04 1.78060E-03 1.35510E-02 8.38190E-02 1.03150E-01
     1.27120E-01 1.27970E-01 1.45990E-01 1.46240E-01 1.49680E-01 1.99310E-01
     3.87460E-01 3.36980E-01 3.12670E-01 3.19230E-01 3.71200E-01 4.42260E-01
     5.08630E-01 5.80630E-01 6.48010E-01 6.46350E-01 6.54610E-01 7.56860E-01
     7.84670E-01 8.34770E-01 8.29780E-01 7.91730E-01 8.72160E-01 9.04060E-01
     8.98510E-01 8.73280E-01 8.65330E-01 8.42850E-01 8.08390E-01 7.83140E-01
     8.04100E-01 7.53110E-01 7.74710E-01 7.34890E-01 8.17960E-01 8.09150E-01
     8.00470E-01 7.83760E-01 7.68010E-01 7.40800E-01 6.63800E-01 5.79150E-01 
FM24 8.5854E+10
F34:n 109
FC34 20 cm off-axis 238U FC
DE34 LIN
     4.14E-07 1.12E-06 2.38E-06 5.04E-06 1.07E-05 2.26E-05 1.01E-04
     4.54E-04 1.58E-03 3.35E-03 7.10E-03 1.50E-02 3.18E-02 8.65E-02 1.50E-01
     2.24E-01 3.34E-01 4.98E-01 7.43E-01 9.07E-01 1.11E+00 1.35E+00 1.65E+00
     2.02E+00 2.46E+00 3.01E+00 3.68E+00 4.49E+00 5.49E+00 6.70E+00 8.19E+00
     1.00E+01 1.22E+01 1.35E+01 1.49E+01 1.75E+01 1.96E+01 2.25E+01 2.50E+01
     2.75E+01 3.00E+01 3.50E+01 4.00E+01 4.50E+01 5.00E+01 5.50E+01 6.00E+01
     6.50E+01 7.00E+01 8.00E+01 9.00E+01 1.00E+02 1.10E+02 1.20E+02 1.40E+02
     1.60E+02 1.80E+02 2.00E+02 2.25E+02 2.50E+02 2.75E+02 3.00E+02 3.25E+02
     3.50E+02 3.75E+02 4.00E+02 
DF34 LIN 
     6.36560E-06 1.43970E-06 9.34230E-07 6.46250E-07 4.47160E-07 3.09570E-07
     1.81650E-07 8.71180E-08 4.56240E-08 4.00000E-08 6.72000E-06 1.10100E-04
     9.63850E-05 6.12950E-05 3.95290E-05 9.90000E-05 9.61590E-05 2.57700E-04
     1.03340E-03 6.52920E-03 1.89980E-02 5.16710E-02 3.14610E-01 4.95590E-01
     5.49190E-01 5.38620E-01 5.33830E-01 5.61180E-01 5.37130E-01 6.56390E-01
     9.75730E-01 9.90390E-01 9.78590E-01 1.00340E+00 1.13580E+00 1.23440E+00
     1.21330E+00 1.47480E+00 1.57170E+00 1.58130E+00 1.61730E+00 1.66210E+00
     1.67380E+00 1.68560E+00 1.66560E+00 1.64420E+00 1.63950E+00 1.58930E+00
     1.53830E+00 1.52340E+00 1.48450E+00 1.44930E+00 1.41800E+00 1.35830E+00
     1.35160E+00 1.32270E+00 1.31940E+00 1.32440E+00 1.32240E+00 1.32540E+00
     1.33340E+00 1.34340E+00 1.33940E+00 1.32960E+00 1.31280E+00 1.30160E+00
FM34 8.5854E+10
F44:n 109
FC44 20 cm off-axis 232Th FC
DE44 LIN
     4.14E-07 1.12E-06 2.38E-06 5.04E-06 1.07E-05 2.26E-05 1.01E-04
     4.54E-04 1.58E-03 3.35E-03 7.10E-03 1.50E-02 3.18E-02 8.65E-02 1.50E-01
     2.24E-01 3.34E-01 4.98E-01 7.43E-01 9.07E-01 1.11E+00 1.35E+00 1.65E+00
     2.02E+00 2.46E+00 3.01E+00 3.68E+00 4.49E+00 5.49E+00 6.70E+00 8.19E+00
     1.00E+01 1.22E+01 1.35E+01 1.49E+01 1.75E+01 1.96E+01 2.25E+01 2.50E+01
     2.75E+01 3.00E+01 3.50E+01 4.00E+01 4.50E+01 5.00E+01 5.50E+01 6.00E+01
     6.50E+01 7.00E+01 8.00E+01 9.00E+01 1.00E+02 1.10E+02 1.20E+02 1.40E+02
     1.60E+02 1.80E+02 2.00E+02 2.25E+02 2.50E+02 2.75E+02 3.00E+02 3.25E+02
     3.50E+02 3.75E+02 4.00E+02 
DF44 LIN
     0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 
     0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00
     0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00 1.29510E-05
     1.19900E-04 5.96400E-04 1.78060E-03 1.35510E-02 8.38190E-02 1.03150E-01
     1.27120E-01 1.27970E-01 1.45990E-01 1.46240E-01 1.49680E-01 1.99310E-01
     3.87460E-01 3.36980E-01 3.12670E-01 3.19230E-01 3.71200E-01 4.42260E-01
     5.08630E-01 5.80630E-01 6.48010E-01 6.46350E-01 6.54610E-01 7.56860E-01
     7.84670E-01 8.34770E-01 8.29780E-01 7.91730E-01 8.72160E-01 9.04060E-01
     8.98510E-01 8.73280E-01 8.65330E-01 8.42850E-01 8.08390E-01 7.83140E-01
     8.04100E-01 7.53110E-01 7.74710E-01 7.34890E-01 8.17960E-01 8.09150E-01
     8.00470E-01 7.83760E-01 7.68010E-01 7.40800E-01 6.63800E-01 5.79150E-01 
FM44 8.5854E+10
print
c nps 1000000
c * added by ADVANTG
wwp:n 5.0 j 100 j -1 0 3.721881493e-03
prdmp  2J  -1
