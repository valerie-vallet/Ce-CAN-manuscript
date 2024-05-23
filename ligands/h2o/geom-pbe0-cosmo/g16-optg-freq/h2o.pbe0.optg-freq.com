%mem=16000Mb
%NProc=16
%chk=h2o.pbe0.optg-freq.chk
#p PBE1PBE/GEN/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   Scf=(XQC, NoVarAcc,MaxCycle=100,conver=8) Integral=(Grid=UltraFine)
   Guess=Harris
   Symm=None Opt Freq=(Raman,InternalModes,SaveNormalModes)
   SCRF=(COSMO,Read)

h2o.pbe0.optg-freq.chk

 0  1
O 0.0 0.0 0.0
H 0.0 1.0 0.5
H 0.0 1.0 -0.5

O  0
Def2TZVP
****
H  0
Def2TZVP
****

O  0
Def2TZVP
****
H  0
Def2TZVP
****

EPS=80.1
Radii=Bondi
RSolv=1.3


