import os
import sys
sys.path.append(os.getcwd())
import mymodule

a = 1
mymodule.module_structure.init()
print '##from pyhton: call do_something_else (+=1)'
b = mymodule.module_structure.do_something_else(a)
print '##from pyhton,result', b, '(should be = 2)'
mymodule.module_structure.print_on_screen()
print '##from pyhton, this should count to 20'

