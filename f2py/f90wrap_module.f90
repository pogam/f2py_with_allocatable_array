! Module testsubs defined in file ./module.f90

subroutine f90wrap_mysub(w, x, y, z)
    use testsubs, only: mysub
    implicit none
    
    real, intent(in) :: w
    real, intent(in) :: x
    real, intent(in) :: y
    real, intent(in) :: z
    call mysub(w=w, x=x, y=y, z=z)
end subroutine f90wrap_mysub

subroutine f90wrap_testsubs__array__o(dummy_this, nd, dtype, dshape, dloc)
    use testsubs, only: testsubs_o => o
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 12
    if (allocated(testsubs_o)) then
        dshape(1:2) = shape(testsubs_o)
        dloc = loc(testsubs_o)
    else
        dloc = 0
    end if
end subroutine f90wrap_testsubs__array__o

! End of module testsubs defined in file ./module.f90

