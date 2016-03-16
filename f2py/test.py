import _test
import f90wrap.runtime
import logging

class Testsubs(f90wrap.runtime.FortranModule):
    """
    Module testsubs
    
    
    Defined at ./module.f90 lines 1-15
    
    """
    @staticmethod
    def mysub(w, x, y, z):
        """
        mysub(w, x, y, z)
        
        
        Defined at ./module.f90 lines 5-15
        
        Parameters
        ----------
        w : float
        x : float
        y : float
        z : float
        
        """
        _test.f90wrap_mysub(w=w, x=x, y=y, z=z)
    
    @property
    def o(self):
        """
        Element o ftype=real pytype=float
        
        
        Defined at ./module.f90 line 2
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _test.f90wrap_testsubs__array__o(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            o = self._arrays[array_handle]
        else:
            o = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _test.f90wrap_testsubs__array__o)
            self._arrays[array_handle] = o
        return o
    
    @o.setter
    def o(self, o):
        self.o[...] = o
    
    def __str__(self):
        ret = ['<testsubs>{\n']
        ret.append('    o : ')
        ret.append(repr(self.o))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    

testsubs = Testsubs()

