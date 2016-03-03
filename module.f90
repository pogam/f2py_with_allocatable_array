MODULE testsubs
REAL, DIMENSION(:,:), ALLOCATABLE  :: o

contains
SUBROUTINE mysub(w,x,y,z) !...
  IMPLICIT NONE
  REAL, INTENT(IN) :: w, x, y, z

!f2py intent(in) w,x,y,z

  ALLOCATE(o(2,2))
  o(1,1)=w
  o(1,2)=x
  o(2,1)=y
  o(2,2)=z
END SUBROUTINE mysub
END MODULE testsubs
