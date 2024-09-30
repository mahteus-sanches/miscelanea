program average
implicit none

real(8), dimension(:), allocatable :: array
real(8) :: a, b, avg
integer :: n, i

! Read the size of the array
print *, "Enter the number of elements in the array:"
read *, n

! Allocate memory for the array
allocate(array(n))

! Read the elements of the array
print *, "Enter the elements of the array:"
do i = 1, n
    read *, array(i)
end do

! Read the interval [a, b]
print *, "Enter the values of a and b (a <= b):"
read *, a, b

! Call the function to calculate the average
avg = average_in_interval(array, a, b)

! Print the result
print *, "The average of values within [", a, ",", b, "] is: ", avg

! Deallocate the array
deallocate(array)

contains

function average_in_interval(array, a, b) result(avg)
    implicit none
    real(8), dimension(:), intent(in) :: array  ! Input array
    real(8), intent(in) :: a, b                 ! Interval [a, b]
    real(8) :: avg                             ! Result (average)
    real(8) :: sum                             ! Sum of values within the interval
    integer :: i, count                        ! Loop variable and counter

    sum = 0.0
    count = 0

    ! Loop over the array to accumulate values in the interval [a, b]
    do i = 1, size(array)
        if (array(i) >= a .and. array(i) <= b) then
            sum = sum + array(i)
            count = count + 1
        end if
    end do

    ! Calculate the average if count > 0, otherwise set avg to 0
    if (count > 0) then
        avg = sum / count
    else
        avg = 0.0
    end if

end function average_in_interval




end program average