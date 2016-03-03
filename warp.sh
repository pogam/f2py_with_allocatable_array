#/bin/bash
rm *.o *.mod
f2py -m test -h test.pyf *.f90 --overwrite-signature
f2py -c --fcompiler=gnu95 test.pyf *.f90  --f90flags='-fdefault-real-8'
