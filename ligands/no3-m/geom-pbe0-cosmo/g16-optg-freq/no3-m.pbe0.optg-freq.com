%mem=8000Mb
%NProc=8
%chk=no3-m.pbe0.optg-freq.chk
#p PBE1PBE/GEN/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   Scf=(XQC, NoVarAcc,MaxCycle=100,conver=8) Integral=(Grid=UltraFine)
   Guess=Harris
   Symm=None Opt Freq=(Raman,InternalModes,SaveNormalModes)
   SCRF=(COSMO,Read)

no3-m.pbe0.optg-freq.chk

 -1 1
N 0.0 0.0 0.0
O 0.0 0.75  0.866025403784439
O 0.0 0.75 -0.866025403784439
O 0.0 -1.5 0.0

O  0
Def2TZVP
****
N  0
Def2TZVP
****

O  0
Def2TZVP
****
N  0
Def2TZVP
****

EPS=80.1
Radii=Bondi
RSolv=1.3


