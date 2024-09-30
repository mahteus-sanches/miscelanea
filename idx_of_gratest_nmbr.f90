program find_the_idx_greatest_number
implicit none

real(8), dimension(:), allocatable :: array
integer ::i, n, r

print *, "Number of elements in the array:"
read *, n

allocate(array(n))

print *, "numbers to enter the array:"
do i = 1, n
    read *, array(i)
end do
r = index_of_greatest(array)

print *, "The index of the maximum value is", r 


deallocate(array)

contains

function index_of_greatest(array) result(idx)
    implicit none
    real(8), dimension(:), intent(in) :: array
    real(8) :: vmax
    integer :: idx, i, range
    vmax = 0.0
    idx = 0
    range = size(array)
    do i=0,range
        if ( array(i) > vmax) then
            vmax=array(i)
            idx=i
        end if
    end do
end function


end program find_the_idx_greatest_number