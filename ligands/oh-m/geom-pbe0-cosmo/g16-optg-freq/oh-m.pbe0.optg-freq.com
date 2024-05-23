%mem=4000Mb
%NProc=4
%chk=oh-m.pbe0.optg-freq.chk
#p PBE1PBE/GEN/GEN GFInput GFOldPrint 5D 7F IOP(4/69=2, 6/7=3)
   Scf=(XQC, NoVarAcc,MaxCycle=100,conver=8) Integral=(Grid=UltraFine)
   Guess=CheckPoint Geom=CheckPoint
   Opt Freq=(Raman,InternalModes,SaveNormalModes)
   SCRF=(COSMO,Read)

oh-m.pbe0.optg-freq.chk

 -1  1

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


