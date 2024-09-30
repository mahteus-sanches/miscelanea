program average
implicit none

integer :: n, x
double precision ::result

print *, "Enter an integer n:"
read *, n
print *, "Enter an integer x:"
read *, x

result = average_potentials(n,x)
print *, result

contains
function average_potentials(n,x) result(sum)
    integer :: n,x,i
    double precision :: sum
    do i=1,n
        if (mod(n,i) == 0) then
            sum = sum + i**x
        end if
    end do
end function



end program