PROGRAM main
  USE testsubs
  IMPLICIT NONE
  REAL :: a=1.1, b=2.2, c=3.3, d=4.4
    
  print*, allocated(o)
  CALL mysub(a, b, c, d) !...

  PRINT *, o(1,1), o(1,2)
  PRINT *, o(2,1), o(2,2)
  DEALLOCATE(o) !...
END PROGRAM main
