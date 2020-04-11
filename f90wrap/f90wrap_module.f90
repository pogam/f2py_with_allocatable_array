! Module module_structure defined in file ./src/module.f90

subroutine f90wrap_type_face__get__intete(this, f90wrap_intete)
    use module_structure, only: type_face
    implicit none
    type type_face_ptr_type
        type(type_face), pointer :: p => NULL()
    end type type_face_ptr_type
    integer, intent(in)   :: this(2)
    type(type_face_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_intete
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_intete = this_ptr%p%intete
end subroutine f90wrap_type_face__get__intete

subroutine f90wrap_type_face__set__intete(this, f90wrap_intete)
    use module_structure, only: type_face
    implicit none
    type type_face_ptr_type
        type(type_face), pointer :: p => NULL()
    end type type_face_ptr_type
    integer, intent(in)   :: this(2)
    type(type_face_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_intete
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%intete = f90wrap_intete
end subroutine f90wrap_type_face__set__intete

subroutine f90wrap_type_face__array__ary(this, nd, dtype, dshape, dloc)
    use module_structure, only: type_face
    implicit none
    type type_face_ptr_type
        type(type_face), pointer :: p => NULL()
    end type type_face_ptr_type
    integer, intent(in) :: this(2)
    type(type_face_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%ary)) then
        dshape(1:1) = shape(this_ptr%p%ary)
        dloc = loc(this_ptr%p%ary)
    else
        dloc = 0
    end if
end subroutine f90wrap_type_face__array__ary

subroutine f90wrap_type_face_initialise(this)
    use module_structure, only: type_face
    implicit none
    
    type type_face_ptr_type
        type(type_face), pointer :: p => NULL()
    end type type_face_ptr_type
    type(type_face_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_type_face_initialise

subroutine f90wrap_type_face_finalise(this)
    use module_structure, only: type_face
    implicit none
    
    type type_face_ptr_type
        type(type_face), pointer :: p => NULL()
    end type type_face_ptr_type
    type(type_face_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_type_face_finalise

subroutine f90wrap_init
    use module_structure, only: init
    implicit none
    
    call init()
end subroutine f90wrap_init

subroutine f90wrap_init2
    use module_structure, only: init2
    implicit none
    
    call init2()
end subroutine f90wrap_init2

subroutine f90wrap_print_on_screen
    use module_structure, only: print_on_screen
    implicit none
    
    call print_on_screen()
end subroutine f90wrap_print_on_screen

subroutine f90wrap_do_something_else(a, b)
    use module_structure, only: do_something_else
    implicit none
    
    integer, intent(in) :: a
    integer, intent(out) :: b
    call do_something_else(a=a, b=b)
end subroutine f90wrap_do_something_else

! End of module module_structure defined in file ./src/module.f90

