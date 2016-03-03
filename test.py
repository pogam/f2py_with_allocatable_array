import test
import numpy as np 

print test.testsubs.o

#fill up array
test.testsubs.mysub(1.1,2.2,3.3,4.4)
#copy it in python
array_pyhton = np.copy(test.testsubs.o)
#deallocate fortran array
test.testsubs.o = None

print 'array dimension = ',  array_pyhton.shape
print array_pyhton

