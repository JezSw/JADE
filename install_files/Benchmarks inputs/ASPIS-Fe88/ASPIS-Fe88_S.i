ASPIS iron 88 S - Sulhpur, B. Kos (bor.kos@ijs.si), 2018
c Based on SINBAD documentation (iron_88.pdf Benchmark testing of JEF2.2 data for shielding applications: Analysis of the Winfrith iron 88 benchmark experiment)
c Source distributon based, but moddified (energy spectra), on MCNP input file by Alberto Milocco, Alberto.Milocco@mib.infn.it
c Bor Kos, JSI, August 2018
c -----------------------------------------------------------------------------
c         CELLS                                                         
c -----------------------------------------------------------------------------
c Shields
c
1  6 0.0853705  -300 imp:n=1
2  6 0.0853705  -301 imp:n=1
3  6 0.0853705  -302 imp:n=1
4  6 0.0853705  -303 imp:n=1
5  6 0.0853705  -304 imp:n=1
6  6 0.0853705  -305 imp:n=1
7  6 0.0853705  -306 imp:n=1
8  6 0.0853705  -307 imp:n=1
9  6 0.0853705  -308 imp:n=1
10 6 0.0853705  -309 imp:n=1
11 6 0.0853705  -310 imp:n=1
12 6 0.0853705  -311 imp:n=1
13 6 0.0853705  -312 imp:n=1
14 6 0.0853705  -313 imp:n=1
15 6 0.0853705  -314 imp:n=1
16 6 0.0853705  -315 imp:n=1
17 6 0.0853705  -316 imp:n=1
18 7 0.0864102  -317 imp:n=1
19 8 0.0793442  -318 imp:n=1
c Aluminium NESTOR reactor window
20 1 0.0852154  -209 210 imp:n=1
21 2 0.060261   -210     imp:n=1
c  Graphite block
22 3 0.082729  -211 imp:n=1
c  Aluminium before and after fission plate
23 5 0.0593267 -212 imp:n=1
24 5 0.0593267 -213 imp:n=1
c Fission plate
25 4 0.0597907 -201:-202:-203:-204:-205:-206:-207 imp:n=1
c Aluminium arround fission plate
26 5 0.0593267 -208 #25 imp:n=1
c Detectors
c A2
100 102 0.0341757 -400 imp:n=1
c A3
101 101 0.0361182 -401 imp:n=1
c A4
102 101 0.0361182 -402 imp:n=1
c A5
103 101 0.0361182 -403 imp:n=1
c A6
104 101 0.0361182 -404 imp:n=1
c A7
105 101 0.0361182 -405 imp:n=1
c A8
106 101 0.0361182 -406 imp:n=1
c A9
107 101 0.0361182 -407 imp:n=1
c A10
108 101 0.0361182 -408 imp:n=1
c A11
109 101 0.0361182 -409 imp:n=1
c A12
110 101 0.0361182 -410 imp:n=1
c A13
111 101 0.0361182 -411 imp:n=1
c A14
112 101 0.0361182 -412 imp:n=1
c A15
113 101 0.0361182 -413 imp:n=1
c Void and rest of the world
200 0 -1 #1 #2 #3 #4 #5 #6 #7 #8 #9 #10 #11 #12 #13 #14 #15 #16 #17 #18 #19
         #20 #21 #22 #23 #24 #25 #26
         #100 #101 #102 #103 #104 #105 #106 #107 #108 #109 #110 #111 #112 #113
          imp:n=1
201 0  1 imp:n=0

c -----------------------------------------------------------------------------
c         SURFACES                                                         
c -----------------------------------------------------------------------------
c Void and rest of the world
1 sy 75 200
c Fission plate
201 box -52.25 -0.05 -15.88 0.0 0.0 31.76  0.0 0.2 0.0 104.5 0.0 0.0
202 box -49.08 -0.05 -19.69 0.0 0.0 39.38  0.0 0.2 0.0 98.16 0.0 0.0
203 box -45.92 -0.05 -31.75 0.0 0.0 63.5   0.0 0.2 0.0 91.84 0.0 0.0
204 box -39.58 -0.05 -35.56 0.0 0.0 71.12  0.0 0.2 0.0 79.16 0.0 0.0
205 box -36.42 -0.05 -40.64 0.0 0.0 81.28  0.0 0.2 0.0 72.84 0.0 0.0
206 box -30.08 -0.05 -47.63 0.0 0.0 95.26  0.0 0.2 0.0 60.16 0.0 0.0
207 box -14.25 -0.05 -51.44 0.0 0.0 102.88 0.0 0.2 0.0  28.5 0.0 0.0
c Aluminium arround fission plate
208 box -88.9  -0.15 -88.9 0.0 0.4   0.0 182.9 0.0 0.0 0.0 0.0 190.0
c Aluminium NESTOR reactor window
209 box -88.9  -21.25 -88.9 0.0 3.18 0.0 182.9 0.0 0.0 0.0 0.0 190.0
210 rcc 0.0 -21.25 0.0 0.0 3.18 0.0 56.06
c Graphite block
211 box -88.9  -17.55 -88.9 0.0 15.0 0.0 182.9 0.0 0.0 0.0 0.0 190.0
c Aluminium before and after fission plate
212 box -88.9  -1.45 -88.9 0.0 1.2 0.0 182.9 0.0 0.0 0.0 0.0 190.0
213 box -88.9   0.25 -88.9 0.0 1.2 0.0 182.9 0.0 0.0 0.0 0.0 190.0
c Shields
300 box -88.9  2.19  -88.9 0.0 5.10  0.0 182.9 0.0 0.0 0.0 0.0 190.0
301 box -88.9  8.03  -88.9 0.0 5.12  0.0 182.9 0.0 0.0 0.0 0.0 190.0
302 box -88.9 13.89  -88.9 0.0 5.12  0.0 182.9 0.0 0.0 0.0 0.0 190.0
303 box -88.9 19.75  -88.9 0.0 5.10  0.0 182.9 0.0 0.0 0.0 0.0 190.0
304 box -88.9 25.59  -88.9 0.0 5.20  0.0 182.9 0.0 0.0 0.0 0.0 190.0
305 box -88.9 31.53  -88.9 0.0 5.15  0.0 182.9 0.0 0.0 0.0 0.0 190.0
306 box -88.9 37.42  -88.9 0.0 5.20  0.0 182.9 0.0 0.0 0.0 0.0 190.0
307 box -88.9 43.36  -88.9 0.0 5.20  0.0 182.9 0.0 0.0 0.0 0.0 190.0
308 box -88.9 49.30  -88.9 0.0 5.25  0.0 182.9 0.0 0.0 0.0 0.0 190.0
309 box -88.9 55.29  -88.9 0.0 5.18  0.0 182.9 0.0 0.0 0.0 0.0 190.0
310 box -88.9 61.21  -88.9 0.0 5.07  0.0 182.9 0.0 0.0 0.0 0.0 190.0
311 box -88.9 67.02  -88.9 0.0 5.12  0.0 182.9 0.0 0.0 0.0 0.0 190.0
312 box -88.9 72.88  -88.9 0.0 5.18  0.0 182.9 0.0 0.0 0.0 0.0 190.0
313 box -88.9 78.80  -88.9 0.0 5.10  0.0 182.9 0.0 0.0 0.0 0.0 190.0
314 box -88.9 83.90  -88.9 0.0 5.25  0.0 182.9 0.0 0.0 0.0 0.0 190.0
315 box -88.9 89.15  -88.9 0.0 5.00  0.0 182.9 0.0 0.0 0.0 0.0 190.0
316 box -88.9 94.15  -88.9 0.0 4.97  0.0 182.9 0.0 0.0 0.0 0.0 190.0
317 box -88.9 99.12  -88.9 0.0 22.41 0.0 182.9 0.0 0.0 0.0 0.0 190.0
318 box -88.9 121.53 -88.9 0.0 100.0 0.0 182.9 0.0 0.0 0.0 0.0 190.0
c Detectors
400 rcc 0.0 2.19 0.0 0.0 -0.241 0.0 1.905
401 rcc 0.0 8.03 0.0 0.0 -0.56 0.0 2.55
402 rcc 0.0 13.89 0.0 0.0 -0.56 0.0 2.55
403 rcc 0.0 19.75 0.0 0.0 -0.56 0.0 2.55
404 rcc 0.0 25.59 0.0 0.0 -0.56 0.0 2.55
405 rcc 0.0 31.53 0.0 0.0 -0.56 0.0 2.55
406 rcc 0.0 37.42 0.0 0.0 -0.56 0.0 2.55
407 rcc 0.0 43.36 0.0 0.0 -0.56 0.0 2.55
408 rcc 0.0 49.3 0.0 0.0 -0.56 0.0 2.55
409 rcc 0.0 55.29 0.0 0.0 -0.56 0.0 2.55
410 rcc 0.0 61.21 0.0 0.0 -0.56 0.0 2.55
411 rcc 0.0 67.02 0.0 0.0 -0.56 0.0 2.55
412 rcc 0.0 72.88 0.0 0.0 -0.56 0.0 2.55
413 rcc 0.0 78.8 0.0 0.0 -0.56 0.0 2.55

c -----------------------------------------------------------------------------
c         MATERIALS
c -----------------------------------------------------------------------------
c Material : MildSteel, mat. ref. no.: 1; rho=0.0852154
m1    6012.00c     8.5499E-04
      6013.00c     9.2474E-06
c     6000.00c     0.00086424 
     14028.00c     6.1977e-05 
     14029.00c     3.147e-06
     14030.00c     2.0745e-06 
     25055.00c     0.00093612 
     26054.00c     0.0048717
     26056.00c     0.076475 
     26057.00c     0.0017661 
     26058.00c     0.00023504
c Material 00c: Aluminium, mat. ref. no.: 2; rho=0.060261
m2   13027.00c     0.060261
c Material 00c: Graphite, mat. ref. no.: 3; rho=0.082729
m3    6012.00c     8.1844E-02
      6013.00c     8.8520E-04
c     6000.00c     0.082729
mt3   grph.
c Material : Fuel, mat. ref. no.: 4; rho=0.0597907
m4   13027.00c     0.058122 
     92235.00c     0.001555 
     92238.00c     0.00011367
c Material 00c: Aluminium, mat. ref. no.: 5; rho=0.0593267
m5   13027.00c     0.05908 
     14028.00c     7.9083e-05 
     14029.00c     4.0156e-06
     14030.00c     2.6471e-06 
     26054.00c     9.41e-06 
     26056.00c     0.00014772
     26057.00c     3.4114e-06 
     26058.00c     4.54e-07
c Material 00c: MildSteel, mat. ref. no.: 6; rho=0.0853705
m6   26054.00c     0.0048998 
     26056.00c     0.076916 
     26057.00c     0.0017763
     26058.00c     0.0002364 
     25055.00c     0.00063675 
      6012.00c     8.9556E-04
      6013.00c     9.6862E-06
c     6000.00c     0.00090525
c Material 00c: StainlessSteel, mat. ref. no.: 7; rho=0.0864102
m7    6012.00c     8.9556E-04
      6013.00c     9.6862E-06
c     6000.00c     0.00090525 
     14028.00c     0.00078282 
     14029.00c     3.975e-05
     14030.00c     2.6203e-05 
     15031.00c     4.6177e-05 
     16032.00c     2.823e-05
     16033.00c     2.26e-07 
     16034.00c     1.2757e-06 
     16036.00c     5.9474e-09
     24050.00c     0.00066812 
     24052.00c     0.012884 
     24053.00c     0.0014609
     24054.00c     0.00036366 
     25055.00c     0.0013625 
     26054.00c     0.0033408
     26056.00c     0.052444 
     26057.00c     0.0012112 
     26058.00c     0.00016118
     28058.00c     0.0064478 
     28060.00c     0.0024837 
     28061.00c     0.00010796
     28062.00c     0.00034424 
     28064.00c     8.7667e-05 
     42092.00c     0.00017994
     42094.00c     0.00011216 
     42095.00c     0.00019303 
     42096.00c     0.00020225
     42097.00c     0.0001158 
     42098.00c     0.00029258 
     42100.00c     0.00011677
c Material 00c: Concrete, mat. ref. no.: 8; rho=0.0793442
m8    1001.00c     0.01342 
      1002.00c     1.5435e-06 
      8016.00c     0.044621 
      8017.00c     0.00010869 
     11023.00c     0.00094741 
     13027.00c     0.0017047 
     14028.00c     0.014967 
     14029.00c     0.00075999 
     14030.00c     0.00050099 
     19039.00c     0.00064536 
     19040.00c     8.0966e-08 
     19041.00c     4.6574e-05 
     20040.00c     0.0012402 
     20042.00c     8.2772e-06 
     20043.00c     1.7271e-06 
     20044.00c     2.6687e-05
     20046.00c     5.1173e-08
     20048.00c     2.3923e-06
     26054.00c     1.9965e-05
     26056.00c     0.0003134
     26057.00c     7.2379e-06
     26058.00c     9.6323e-07
c Material 00c: 35S rho=0.0361182
m101 16032.00c     0.034287
     16033.00c     0.0002745
     16034.00c     0.0015495
     16036.00c     7.2236e-06
c Material 00c: 35Spressed rho=0.0341757
m102 16032.00c     0.032443 
     16033.00c     0.00025974 
     16034.00c     0.0014661
     16036.00c     6.8352e-06
c Material for RR
m201 16032.34y  1 
c -----------------------------------------------------------------------------
c         SOURCE
c -----------------------------------------------------------------------------
sdef erg=d1 vec=0.0 1 0.0 y=d3 z=d4 x=fz=d5
c IAEA STD 2017, A. Carlson et al Nucl.Data Sheets 148(2017) 143 Standard n_{th} + U-235 PFNS
c https://www-nds.iaea.org/standards/ref-spectra/PFNS-u235nth.txt
si1 a   0.0000E+00  1.0000E-11  1.5000E-11  2.0000E-11  3.5000E-11
        5.0000E-11  7.5000E-11  1.0000E-10  1.5000E-10  2.0000E-10
        3.5000E-10  5.0000E-10  7.5000E-10  1.0000E-09  1.5000E-09
        2.0000E-09  3.5000E-09  5.0000E-09  7.5000E-09  1.0000E-08
        1.5000E-08  2.0000E-08  3.5000E-08  5.0000E-08  7.5000E-08
        1.0000E-07  1.5000E-07  2.0000E-07  3.5000E-07  5.0000E-07
        7.5000E-07  1.0000E-06  1.5000E-06  2.0000E-06  3.5000E-06
        5.0000E-06  7.5000E-06  1.0000E-05  1.5000E-05  2.0000E-05
        3.5000E-05  5.0000E-05  7.5000E-05  1.0000E-04  1.5000E-04
        2.0000E-04  3.5000E-04  5.0000E-04  7.5000E-04  1.0000E-03
        1.5000E-03  2.0000E-03  3.5000E-03  5.0000E-03  7.5000E-03
        1.0000E-02  1.3750E-02  1.7500E-02  2.5000E-02  2.6204E-02
        2.6828E-02  2.7466E-02  2.8120E-02  2.8789E-02  2.9474E-02
        3.0176E-02  3.0894E-02  3.1629E-02  3.2382E-02  3.3152E-02
        3.3941E-02  3.4749E-02  3.5576E-02  3.6423E-02  3.7289E-02
        3.8177E-02  3.9085E-02  4.0016E-02  4.0968E-02  4.1943E-02
        4.2941E-02  4.3963E-02  4.5009E-02  4.6080E-02  4.7177E-02
        4.8300E-02  4.9449E-02  5.0626E-02  5.1831E-02  5.3064E-02
        5.4327E-02  5.5620E-02  5.6944E-02  5.8299E-02  5.9686E-02
        6.1107E-02  6.2561E-02  6.4050E-02  6.5574E-02  6.7135E-02
        6.8732E-02  7.0368E-02  7.2043E-02  7.3757E-02  7.5512E-02
        7.7310E-02  7.9149E-02  8.1033E-02  8.2961E-02  8.4936E-02
        8.6957E-02  8.9027E-02  9.1145E-02  9.3314E-02  9.5535E-02
        9.7809E-02  1.0014E-01  1.0252E-01  1.0496E-01  1.0746E-01
        1.1001E-01  1.1263E-01  1.1531E-01  1.1806E-01  1.2087E-01
        1.2374E-01  1.2669E-01  1.2970E-01  1.3279E-01  1.3595E-01
        1.3919E-01  1.4250E-01  1.4589E-01  1.4936E-01  1.5292E-01
        1.5655E-01  1.6028E-01  1.6409E-01  1.6800E-01  1.7200E-01
        1.7609E-01  1.8028E-01  1.8457E-01  1.8896E-01  1.9346E-01
        1.9807E-01  2.0278E-01  2.0761E-01  2.1255E-01  2.1760E-01
        2.2278E-01  2.2809E-01  2.3351E-01  2.3907E-01  2.4476E-01
        2.5059E-01  2.5655E-01  2.6265E-01  2.6891E-01  2.7530E-01
        2.8186E-01  2.8856E-01  2.9543E-01  3.0246E-01  3.0966E-01
        3.1703E-01  3.2457E-01  3.3230E-01  3.4021E-01  3.4830E-01
        3.5659E-01  3.6508E-01  3.7377E-01  3.8266E-01  3.9177E-01
        4.0109E-01  4.1064E-01  4.2041E-01  4.3041E-01  4.4066E-01
        4.5115E-01  4.6188E-01  4.7287E-01  4.8413E-01  4.9565E-01
        5.0745E-01  5.1952E-01  5.3189E-01  5.4454E-01  5.5750E-01
        5.7077E-01  5.8435E-01  5.9826E-01  6.1250E-01  6.2707E-01
        6.4200E-01  6.5728E-01  6.7292E-01  6.8893E-01  7.0533E-01
        7.2211E-01  7.3930E-01  7.5689E-01  7.7490E-01  7.9335E-01
        8.1223E-01  8.3156E-01  8.5135E-01  8.7161E-01  8.9235E-01
        9.1359E-01  9.3533E-01  9.5759E-01  9.8038E-01  1.0037E+00
        1.0276E+00  1.0520E+00  1.0771E+00  1.1027E+00  1.1290E+00
        1.1558E+00  1.1833E+00  1.2115E+00  1.2403E+00  1.2698E+00
        1.3001E+00  1.3310E+00  1.3627E+00  1.3951E+00  1.4283E+00
        1.4623E+00  1.4971E+00  1.5327E+00  1.5692E+00  1.6066E+00
        1.6448E+00  1.6839E+00  1.7240E+00  1.7650E+00  1.8070E+00
        1.8500E+00  1.8941E+00  1.9391E+00  1.9853E+00  2.0326E+00
        2.0809E+00  2.1304E+00  2.1811E+00  2.2330E+00  2.2862E+00
        2.3406E+00  2.3963E+00  2.4533E+00  2.5117E+00  2.5715E+00
        2.6327E+00  2.6953E+00  2.7595E+00  2.8252E+00  2.8924E+00
        2.9612E+00  3.0317E+00  3.1038E+00  3.1777E+00  3.2533E+00
        3.3308E+00  3.4100E+00  3.4912E+00  3.5743E+00  3.6593E+00
        3.7464E+00  3.8356E+00  3.9269E+00  4.0203E+00  4.1160E+00
        4.2139E+00  4.3142E+00  4.4169E+00  4.5220E+00  4.6296E+00
        4.7398E+00  4.8526E+00  4.9681E+00  5.0863E+00  5.2074E+00
        5.3313E+00  5.4582E+00  5.5881E+00  5.7211E+00  5.8572E+00
        5.9966E+00  6.1393E+00  6.2854E+00  6.4350E+00  6.5881E+00
        6.7449E+00  6.9055E+00  7.0698E+00  7.2380E+00  7.4103E+00
        7.5866E+00  7.7672E+00  7.9520E+00  8.1413E+00  8.3350E+00
        8.5334E+00  8.7365E+00  8.9444E+00  9.1572E+00  9.3752E+00
        9.5983E+00  9.8267E+00  9.9000E+00  1.0100E+01  1.0300E+01
        1.0500E+01  1.0700E+01  1.0900E+01  1.1100E+01  1.1300E+01
        1.1500E+01  1.1700E+01  1.1900E+01  1.2100E+01  1.2300E+01
        1.2500E+01  1.2700E+01  1.2900E+01  1.3100E+01  1.3200E+01
        1.3400E+01  1.3500E+01  1.3700E+01  1.3900E+01  1.4100E+01
        1.4200E+01  1.4400E+01  1.4600E+01  1.4950E+01  1.5300E+01
        1.5650E+01  1.6000E+01  1.6350E+01  1.6700E+01  1.7050E+01
        1.7400E+01  1.7750E+01  1.8100E+01  1.8450E+01  1.8800E+01
        1.9150E+01  1.9500E+01  1.9750E+01  2.0000E+01  2.0250E+01
        2.0500E+01  2.0750E+01  2.1000E+01  2.1250E+01  2.1500E+01
        2.1750E+01  2.2000E+01  2.2250E+01  2.2500E+01  2.2750E+01
        2.3000E+01  2.3250E+01  2.3500E+01  2.3750E+01  2.4000E+01
        2.4250E+01  2.4500E+01  2.4750E+01  2.5000E+01  2.5250E+01
        2.5500E+01  2.5750E+01  2.6000E+01  2.6250E+01  2.6500E+01
        2.6750E+01  2.7000E+01  2.7250E+01  2.7500E+01  2.7750E+01
        2.8000E+01  2.8250E+01  2.8500E+01  2.8750E+01  2.9000E+01
        2.9250E+01  2.9500E+01  2.9750E+01  3.0000E+01
sp1     0.0000E+00  2.1499E-06  2.6331E-06  3.0405E-06  4.0222E-06
        4.8075E-06  5.8880E-06  6.7989E-06  8.3269E-06  9.6151E-06
        1.2719E-05  1.5202E-05  1.8619E-05  2.1499E-05  2.6331E-05
        3.0405E-05  4.0222E-05  4.8075E-05  5.8880E-05  6.7989E-05
        8.3269E-05  9.6151E-05  1.2720E-04  1.5202E-04  1.8619E-04
        2.1499E-04  2.6331E-04  3.0405E-04  4.0222E-04  4.8075E-04
        5.8880E-04  6.7989E-04  8.3269E-04  9.6151E-04  1.2720E-03
        1.5203E-03  1.8619E-03  2.1500E-03  2.6332E-03  3.0405E-03
        4.0222E-03  4.8074E-03  5.8877E-03  6.7984E-03  8.3260E-03
        9.6137E-03  1.2716E-02  1.5197E-02  1.8609E-02  2.1484E-02
        2.6302E-02  3.0360E-02  4.0116E-02  4.7894E-02  5.8547E-02
        6.7476E-02  7.8898E-02  8.8757E-02  1.0548E-01  1.0790E-01
        1.0913E-01  1.1037E-01  1.1163E-01  1.1290E-01  1.1419E-01
        1.1549E-01  1.1680E-01  1.1812E-01  1.1946E-01  1.2081E-01
        1.2218E-01  1.2356E-01  1.2495E-01  1.2636E-01  1.2778E-01
        1.2922E-01  1.3067E-01  1.3213E-01  1.3361E-01  1.3511E-01
        1.3662E-01  1.3814E-01  1.3968E-01  1.4123E-01  1.4280E-01
        1.4438E-01  1.4598E-01  1.4760E-01  1.4922E-01  1.5087E-01
        1.5252E-01  1.5420E-01  1.5589E-01  1.5759E-01  1.5931E-01
        1.6104E-01  1.6279E-01  1.6456E-01  1.6634E-01  1.6814E-01
        1.6995E-01  1.7177E-01  1.7361E-01  1.7547E-01  1.7734E-01
        1.7923E-01  1.8113E-01  1.8304E-01  1.8497E-01  1.8692E-01
        1.8888E-01  1.9086E-01  1.9284E-01  1.9485E-01  1.9687E-01
        1.9890E-01  2.0094E-01  2.0300E-01  2.0507E-01  2.0716E-01
        2.0925E-01  2.1137E-01  2.1349E-01  2.1562E-01  2.1777E-01
        2.1993E-01  2.2210E-01  2.2428E-01  2.2647E-01  2.2868E-01
        2.3089E-01  2.3311E-01  2.3534E-01  2.3758E-01  2.3982E-01
        2.4208E-01  2.4434E-01  2.4661E-01  2.4888E-01  2.5116E-01
        2.5345E-01  2.5573E-01  2.5803E-01  2.6032E-01  2.6262E-01
        2.6491E-01  2.6721E-01  2.6951E-01  2.7180E-01  2.7410E-01
        2.7639E-01  2.7868E-01  2.8096E-01  2.8323E-01  2.8550E-01
        2.8776E-01  2.9001E-01  2.9225E-01  2.9448E-01  2.9670E-01
        2.9890E-01  3.0108E-01  3.0325E-01  3.0540E-01  3.0753E-01
        3.0964E-01  3.1173E-01  3.1379E-01  3.1583E-01  3.1783E-01
        3.1981E-01  3.2176E-01  3.2367E-01  3.2555E-01  3.2739E-01
        3.2920E-01  3.3096E-01  3.3268E-01  3.3435E-01  3.3598E-01
        3.3756E-01  3.3908E-01  3.4056E-01  3.4197E-01  3.4333E-01
        3.4463E-01  3.4586E-01  3.4703E-01  3.4813E-01  3.4917E-01
        3.5012E-01  3.5101E-01  3.5181E-01  3.5253E-01  3.5317E-01
        3.5373E-01  3.5419E-01  3.5457E-01  3.5485E-01  3.5503E-01
        3.5512E-01  3.5510E-01  3.5498E-01  3.5475E-01  3.5441E-01
        3.5396E-01  3.5340E-01  3.5272E-01  3.5192E-01  3.5100E-01
        3.4996E-01  3.4879E-01  3.4749E-01  3.4606E-01  3.4451E-01
        3.4281E-01  3.4099E-01  3.3903E-01  3.3693E-01  3.3469E-01
        3.3231E-01  3.2979E-01  3.2713E-01  3.2433E-01  3.2139E-01
        3.1831E-01  3.1508E-01  3.1172E-01  3.0821E-01  3.0457E-01
        3.0079E-01  2.9687E-01  2.9281E-01  2.8863E-01  2.8432E-01
        2.7987E-01  2.7531E-01  2.7062E-01  2.6582E-01  2.6090E-01
        2.5588E-01  2.5075E-01  2.4552E-01  2.4020E-01  2.3480E-01
        2.2931E-01  2.2374E-01  2.1811E-01  2.1241E-01  2.0666E-01
        2.0087E-01  1.9503E-01  1.8916E-01  1.8327E-01  1.7736E-01
        1.7145E-01  1.6553E-01  1.5963E-01  1.5375E-01  1.4789E-01
        1.4208E-01  1.3630E-01  1.3059E-01  1.2493E-01  1.1935E-01
        1.1384E-01  1.0843E-01  1.0311E-01  9.7892E-02  9.2786E-02
        8.7798E-02  8.2933E-02  7.8199E-02  7.3600E-02  6.9143E-02
        6.4830E-02  6.0667E-02  5.6656E-02  5.2801E-02  4.9104E-02
        4.5566E-02  4.2190E-02  3.8974E-02  3.5919E-02  3.3024E-02
        3.0288E-02  2.7709E-02  2.5285E-02  2.3012E-02  2.0887E-02
        1.8906E-02  1.7065E-02  1.5359E-02  1.3783E-02  1.2332E-02
        1.1000E-02  9.7819E-03  8.6710E-03  7.6616E-03  6.7476E-03
        5.9231E-03  5.1819E-03  4.5181E-03  3.9258E-03  3.3995E-03
        2.9335E-03  2.5226E-03  2.1617E-03  1.8461E-03  1.5765E-03
        1.3425E-03  1.1395E-03  1.0812E-03  9.3669E-04  8.1149E-04
        7.0092E-04  6.0541E-04  5.2292E-04  4.5167E-04  3.9013E-04
        3.3697E-04  2.9105E-04  2.5139E-04  2.1714E-04  1.8755E-04
        1.6199E-04  1.3992E-04  1.2086E-04  1.0439E-04  9.7020E-05
        8.3800E-05  7.7882E-05  6.7270E-05  5.8104E-05  5.0186E-05
        4.6642E-05  4.0287E-05  3.4798E-05  2.6933E-05  2.0839E-05
        1.6129E-05  1.2481E-05  9.6597E-06  7.4747E-06  5.7851E-06
        4.4765E-06  3.4646E-06  2.6809E-06  2.0749E-06  1.6056E-06
        1.2426E-06  9.6156E-07  8.0070E-07  6.6671E-07  5.5517E-07
        4.6226E-07  3.8494E-07  3.2052E-07  2.6690E-07  2.2223E-07
        1.8505E-07  1.5408E-07  1.2831E-07  1.0684E-07  8.8966E-08
        7.4080E-08  6.1687E-08  5.1364E-08  4.2771E-08  3.5614E-08
        2.9656E-08  2.4693E-08  2.0562E-08  1.7121E-08  1.4257E-08
        1.1872E-08  9.8855E-09  8.2313E-09  6.8543E-09  5.7073E-09
        4.7525E-09  3.9573E-09  3.2952E-09  2.7438E-09  2.2848E-09
        1.9024E-09  1.5841E-09  1.3191E-09  1.0984E-09  9.1462E-10
        7.6160E-10  6.3416E-10  5.2807E-10  4.3971E-10
c * added by ADVANTG
sb1    0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 1.15379e-03 1.18671e-03 1.18922e-03
       1.16743e-03 1.15828e-03 1.13923e-03 1.16855e-03 1.12774e-03 1.13130e-03
       1.12849e-03 1.11837e-03 1.08797e-03 1.10453e-03 1.07172e-03 1.07405e-03
       1.05053e-03 7.46911e-03 1.05354e-02 1.05723e-02 1.06925e-02 1.03403e-02
       9.89565e-03 9.69990e-03 9.76370e-03 9.83096e-03 9.46377e-03 1.69314e-02
       2.20837e-01 2.16101e-01 2.10886e-01 2.06896e-01 2.03247e-01 1.94311e-01
       1.97017e-01 1.86803e-01 1.87124e-01 1.77966e-01 1.70314e-01 1.69533e-01
       1.64630e-01 1.59349e-01 1.53072e-01 1.46778e-01 1.45155e-01 1.39190e-01
       1.33215e-01 1.28249e-01 1.24008e-01 3.80584e-01 4.48312e-01 4.08512e-01
       4.01586e-01 3.84604e-01 3.61501e-01 3.48604e-01 3.25655e-01 3.13420e-01
       2.93582e-01 2.78169e-01 2.60159e-01 2.45817e-01 2.29707e-01 2.15524e-01
       2.02026e-01 1.88900e-01 1.75646e-01 1.59305e-01 1.55593e-01 1.40922e-01
       1.30347e-01 1.19891e-01 1.10820e-01 1.02902e-01 9.03643e-02 8.47545e-02
       7.60831e-02 7.08646e-02 6.19455e-02 5.65824e-02 5.12766e-02 1.01946e-01
       1.00746e-01 9.08070e-02 7.83818e-02 6.95850e-02 6.25074e-02 5.52805e-02
       4.83496e-02 4.21728e-02 3.68149e-02 3.23863e-02 2.73842e-02 2.41417e-02
       1.99292e-02 1.76664e-02 1.52454e-02 1.31141e-02 1.07522e-02 9.50629e-03
       8.53697e-03 7.53558e-03 6.61174e-03 5.77268e-03 4.95474e-03 4.25759e-03
       3.68113e-03 3.14800e-03 2.72690e-03 2.33164e-03 2.06455e-03 1.78464e-03
       1.53344e-03 1.32550e-03 1.14649e-03 9.78768e-04 8.74426e-04 7.64086e-04
       7.05168e-04 6.13295e-04 5.38284e-04 4.73126e-04 4.26910e-04 3.82027e-04
       3.29291e-04 2.84087e-04 2.23131e-04 1.71040e-04 1.35440e-04 1.02691e-04
       7.95743e-05 6.16839e-05 4.71211e-05 3.66963e-05 2.80963e-05 2.17355e-05
       1.69161e-05 1.32849e-05 1.00699e-05 8.05740e-06 6.44549e-06 5.37178e-06
       4.51267e-06 3.79910e-06 3.17093e-06 2.58173e-06 2.13725e-06 1.81590e-06
       1.51432e-06 1.26472e-06 1.05895e-06 8.63690e-07 7.07118e-07 6.02885e-07
       4.99411e-07 4.12905e-07 3.42783e-07 2.91538e-07 2.34489e-07 2.07202e-07
       1.70965e-07 1.40931e-07 1.14443e-07 9.69569e-08 8.11049e-08 6.63844e-08
       5.66438e-08 4.61888e-08 3.81908e-08 3.27089e-08 2.65557e-08 2.27209e-08
       1.84561e-08 1.57959e-08 1.28360e-08 1.09513e-08 8.80659e-09 7.37756e-09
       6.27856e-09 5.28083e-09 4.35568e-09 3.76501e-09
si3 H -0.05 0.15
sp3 D 0 1
si4 a -51.44 -47.63 -40.64 -35.56 -31.75 -19.69 -15.88 -5.29 5.29 15.88
        19.69 31.75 35.56 40.64 47.63 51.44
sp4   7.584 7.278 22.16 25.254 40.034 49.608 63.662 68.812 68.812
        64.524 50.11 41.86 26.892 24.224 8.946 8.718
c * added by ADVANTG
sb4    4.65869e-04 6.32127e-04 1.67859e-03 2.92301e-03 5.48087e-03 1.17596e-02
       1.69023e-02 2.14978e-02 2.14496e-02 1.69902e-02 8.59159e-03 4.91971e-03
       3.09590e-03 1.84682e-03 7.39920e-04 5.42849e-04
ds5 s 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
si6 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp6   0 0 0 0 0 0 0 0 0 0 0 0 0 2.391 2.525 2.525 2.371 0 0 0 0 0 0 0 0
        0 0 0 0 0
c * added by ADVANTG
sb6    0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 3.22229e-02 3.63975e-02 3.66559e-02 3.22058e-02 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si7 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp7   0 0 0 0 0 0 0 0 0 0 0 2.496 2.994 2.994 3.15 3.15 2.984 2.984
        2.386 0 0 0 0 0 0 0 0 0 0 0
c * added by ADVANTG
sb7    0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 1.08126e-02
       1.20282e-02 2.05221e-02 2.35601e-02 2.36291e-02 2.06544e-02 1.17002e-02
       1.04551e-02 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si8 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp8   0 0 0 0 0 0 0 0 0 2.685 3.107 3.107 3.685 3.685 3.855 3.855 3.661
        3.661 2.979 2.979 2.445 0 0 0 0 0 0 0 0 0
c * added by ADVANTG
sb8    0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 6.07003e-03 6.48587e-03 1.00708e-02
       1.07203e-02 1.91935e-02 2.16734e-02 2.20066e-02 1.89788e-02 1.07783e-02
       9.70468e-03 6.15372e-03 5.60104e-03 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si9 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp9   0 0 0 0 0 0 0 2.943 3.065 3.065 3.533 3.533 4.177 4.177 4.357
        4.357 4.137 4.137 3.395 3.395 2.807 2.807 2.689 0 0 0 0 0 0 0
c * added by ADVANTG
sb9    0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 4.38067e-03 4.60873e-03 5.73847e-03 6.10472e-03 9.58315e-03
       1.04183e-02 1.85525e-02 2.13163e-02 2.17278e-02 1.84299e-02 1.03508e-02
       9.31455e-03 6.07888e-03 5.48809e-03 4.19829e-03 4.07263e-03 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si10 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp10   0 0 0 0 0 2.877 3.487 3.487 3.637 3.637 4.187 4.187 4.957 4.957
        5.149 5.149 4.877 4.877 4.045 4.045 3.381 3.381 3.253 3.253
        2.521 0 0 0 0 0
c * added by ADVANTG
sb10   0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 2.69798e-03
       2.95512e-03 4.28951e-03 4.41551e-03 5.57982e-03 5.95253e-03 9.24086e-03
       1.00455e-02 1.80841e-02 2.08072e-02 2.08288e-02 1.78274e-02 9.86690e-03
       8.97355e-03 5.73851e-03 5.28762e-03 4.09412e-03 3.99011e-03 2.72994e-03
       2.37278e-03 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si11 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp11   0 0 0 3.04 3.232 3.232 3.916 3.916 4.086 4.086 4.714 4.714 5.6
        5.6 5.802 5.802 5.484 5.484 4.578 4.578 3.864 3.864 3.726 3.726
        2.936 2.936 2.75 0 0 0
c * added by ADVANTG
sb11   0.00000e+00 0.00000e+00 0.00000e+00 1.88876e-03 1.90039e-03 2.57073e-03
       2.85991e-03 4.00718e-03 4.24890e-03 5.39909e-03 5.97070e-03 9.28571e-03
       9.87917e-03 1.78448e-02 2.08889e-02 2.02271e-02 1.76634e-02 9.77195e-03
       8.92483e-03 5.66038e-03 5.07337e-03 4.11971e-03 3.93934e-03 2.76640e-03
       2.42939e-03 1.77996e-03 1.74467e-03 0.00000e+00 0.00000e+00 0.00000e+00
si12 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp12   0 2.823 3.229 3.229 3.421 3.421 4.147 4.147 4.331 4.331 5.007
        5.007 5.975 5.975 6.183 6.183 5.835 5.835 4.893 4.893 4.153
        4.153 4.015 4.015 3.199 3.199 3.007 3.007 2.495 0
c * added by ADVANTG
sb12   0.00000e+00 1.29643e-03 1.38750e-03 1.87479e-03 1.88345e-03 2.52454e-03
       2.80839e-03 4.15601e-03 4.17342e-03 5.35176e-03 5.87696e-03 9.05671e-03
       9.76833e-03 1.71571e-02 2.04637e-02 2.07708e-02 1.76946e-02 9.64363e-03
       8.73590e-03 5.62608e-03 5.19078e-03 4.03452e-03 3.97244e-03 2.60532e-03
       2.44338e-03 1.79346e-03 1.72936e-03 1.30291e-03 1.17116e-03 0.00000e+00
si13 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp13   0 2.926 3.338 3.338 3.516 3.516 4.27 4.27 4.458 4.458 5.172
        5.172 6.196 6.196 6.412 6.412 6.042 6.042 5.084 5.084 4.336
        4.336 4.204 4.204 3.38 3.38 3.194 3.194 2.67 0
c * added by ADVANTG
sb13   0.00000e+00 1.25833e-03 1.34359e-03 1.78747e-03 1.83780e-03 2.50478e-03
       2.79765e-03 4.12663e-03 4.23676e-03 5.31379e-03 5.84607e-03 9.09478e-03
       9.98290e-03 1.81240e-02 2.04218e-02 2.01822e-02 1.73328e-02 9.60360e-03
       8.89656e-03 5.71520e-03 5.30028e-03 4.02938e-03 4.00981e-03 2.73977e-03
       2.37193e-03 1.75600e-03 1.71750e-03 1.30772e-03 1.13675e-03 0.00000e+00
si14 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp14   0 2.843 3.237 3.237 3.407 3.407 4.131 4.131 4.315 4.315 5.005
        5.005 6.005 6.005 6.215 6.215 5.853 5.853 4.921 4.921 4.197
        4.197 4.069 4.069 3.277 3.277 3.099 3.099 2.601 0
c * added by ADVANTG
sb14   0.00000e+00 1.31629e-03 1.38896e-03 1.84266e-03 1.86917e-03 2.53810e-03
       2.80767e-03 4.05580e-03 4.14854e-03 5.29972e-03 5.74298e-03 8.97460e-03
       9.87558e-03 1.80786e-02 2.05033e-02 2.06035e-02 1.75481e-02 9.38049e-03
       8.67975e-03 5.57976e-03 5.20368e-03 4.07643e-03 4.06991e-03 2.72200e-03
       2.42815e-03 1.80330e-03 1.76870e-03 1.35051e-03 1.20388e-03 0.00000e+00
si15 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp15   0 0 0 3.066 3.234 3.234 3.916 3.916 4.09 4.09 4.734 4.734 5.67
        5.67 5.87 5.87 5.528 5.528 4.632 4.632 3.932 3.932 3.814 3.814
        3.048 3.048 2.892 0 0 0
c * added by ADVANTG
sb15   0.00000e+00 0.00000e+00 0.00000e+00 1.86556e-03 1.94124e-03 2.55608e-03
       2.94420e-03 4.04332e-03 4.37543e-03 5.36391e-03 6.08269e-03 9.00629e-03
       9.69582e-03 1.88017e-02 2.08134e-02 2.03625e-02 1.70554e-02 9.79917e-03
       8.82035e-03 5.67701e-03 5.29478e-03 4.19397e-03 4.00652e-03 2.75278e-03
       2.47554e-03 1.85699e-03 1.80426e-03 0.00000e+00 0.00000e+00 0.00000e+00
si16 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp16   0 0 0 0 0 2.942 3.556 3.556 3.714 3.714 4.284 4.284 5.108 5.108
        5.286 5.286 4.974 4.974 4.136 4.136 3.478 3.478 3.366 3.366
        2.652 0 0 0 0 0
c * added by ADVANTG
sb16   0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 2.75770e-03
       3.01129e-03 4.27795e-03 4.44365e-03 5.57096e-03 6.16411e-03 9.35661e-03
       1.01582e-02 1.79157e-02 2.08041e-02 2.05175e-02 1.77969e-02 9.84051e-03
       8.96021e-03 5.76897e-03 5.38551e-03 4.18877e-03 4.09482e-03 2.82328e-03
       2.49344e-03 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si17 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp17   0 0 0 0 0 0 0 3.115 3.257 3.257 3.743 3.743 4.441 4.441 4.587
        4.587 4.305 4.305 3.545 3.545 2.935 2.935 2.837 0 0 0 0 0 0 0
c * added by ADVANTG
sb17   0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 4.52033e-03 4.61158e-03 5.86910e-03 6.19029e-03 9.78370e-03
       1.04716e-02 1.83954e-02 2.15995e-02 2.15323e-02 1.82775e-02 1.01415e-02
       9.32326e-03 5.98793e-03 5.38955e-03 4.10858e-03 4.10348e-03 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si18 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp18   0 0 0 0 0 0 0 0 0 2.957 3.395 3.395 4.027 4.027 4.149 4.149
        3.881 3.881 3.177 3.177 2.603 0 0 0 0 0 0 0 0 0
c * added by ADVANTG
sb18   0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 6.14672e-03 6.53539e-03 1.00578e-02
       1.09872e-02 1.97139e-02 2.20093e-02 2.16594e-02 1.86721e-02 1.05434e-02
       9.54882e-03 6.11413e-03 5.56933e-03 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si19 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp19   0 0 0 0 0 0 0 0 0 0 0 2.891 3.455 3.455 3.537 3.537 3.271 3.271
        2.679 0 0 0 0 0 0 0 0 0 0 0
c * added by ADVANTG
sb19   0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 1.12042e-02
       1.21900e-02 2.10316e-02 2.37727e-02 2.33348e-02 2.00190e-02 1.14438e-02
       1.03316e-02 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
si20 a -52.26 -52.24 -49.09 -49.07 -45.93 -45.91 -39.59 -39.57 -36.43
        -36.41 -30.09 -30.07 -14.26 -14.24 -4.75 4.75 14.24 14.26 30.07
        30.09 36.41 36.43 39.57 39.59 45.91 45.93 49.07 49.09 52.24
        52.26
sp20   0 0 0 0 0 0 0 0 0 0 0 0 0 2.952 2.994 2.994 2.736 0 0 0 0 0 0 0
        0 0 0 0 0 0
c * added by ADVANTG
sb20   0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 3.36407e-02 3.67842e-02 3.59588e-02 3.14076e-02 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
       0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00 0.00000e+00
c -----------------------------------------------------------------------------
c         TALLIES
c -----------------------------------------------------------------------------  
f4:n   100 101 102 103 104 105 106 107 108 109 110 111 112 113
fm4   1.2960414408e-12 201 103
f14:n  100 101 102 103 104 105 106 107 108 109 110 111 112 113
c --------------- PHYSICS CARDS --------------------------
mode n
cut:n  j 1
rand gen=2 seed=501932527452171 stride=152917 hist=1
c * added by ADVANTG
wwp:n 5.0 j 100 j -1 0 8.544412069e-01
prdmp  2J  -1
nonu
