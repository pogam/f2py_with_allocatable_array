#/bin/bash
rm *.o *.mod f90wrap* test.py 
rm -r src.linux-x86_64-2.7
f90wrap -m test $(find . -name "*.f90" '!' -name prog.f90) -v
gfortran -c $(find . -name "*.f90" '!' -name prog.f90 '!' -name f90*.f90) -fdefault-real-8 -fPIC
f2py-f90wrap --build-dir . -c --fcompiler=gnu95 -m _test *.o f90wrap*.f90  --f90flags='-fPIC -fdefault-real-8'
