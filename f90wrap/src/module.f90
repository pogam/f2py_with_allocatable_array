module module_structure

type type_face
    integer :: intete
    real,dimension(:),allocatable :: ary
end type type_face

type(type_face),dimension(:),allocatable :: merde, coco

contains 
!#########################
subroutine init ()
    implicit none
    integer :: i
    print*, '%%from fortran: allocate structure with array of dim=20'
    allocate(merde(20))

    do i = 1,20
        merde(i)%intete = i
        allocate(merde(i)%ary(i))
    end do

end subroutine init

!#########################
subroutine init2 ()

    implicit none
    integer:: i 

    do i=1,20  
        merde(1)%ary(i) = i
    enddo

end subroutine init2

!#########################
subroutine print_on_screen ()
    implicit none 
    print*, '%%from fortran: print integer from all structure'
    print*, merde(:)%intete

end subroutine print_on_screen

!#########################
subroutine do_something_else (a,b)
    integer,intent(in) ::  a
    integer,intent(out) :: b

    b = a + merde(1)%intete

end subroutine do_something_else


end module module_structure
