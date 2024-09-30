module divisor_sum_module
    implicit none

contains

    ! Function to calculate the sum of the powers of the divisors of n
    double precision function sum_of_divisors_powers(n, x)
        integer, intent(in) :: n, x
        double precision :: s
        integer :: i

        s = 0.0d0  ! Initialize sum s to 0.0

        ! Loop over possible divisors from 1 to n
        do i = 1, n
            if (mod(n, i) == 0) then  ! Check if i is a divisor of n
                s = s + i**x        ! Add i^x to the sum
            end if
        end do

        sum_of_divisors_powers = s  ! Return the calculated sum

    end function sum_of_divisors_powers

end module divisor_sum_module

program main
    use divisor_sum_module
    implicit none

    integer :: n, x
    double precision :: result

    ! Read the values of n and x from the user
    print *, "Enter an integer n:"
    read *, n
    print *, "Enter an integer x:"
    read *, x

    ! Call the function to calculate the sum of the powers of the divisors
    result = sum_of_divisors_powers(n, x)

    ! Print the result
    print *, "The sum of the powers of the divisors of", n, "is:", result

end program main
