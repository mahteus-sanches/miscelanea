program pell_program
implicit none

integer :: n,r

print *, "Enter the pell number you want"
read *, n

r = pell(n)
print *, r

contains
function pell(n) result(p)
    integer :: n,p,pa,pb,var,i

if (n .LE. 2) then
    p=n
else
    pa=1
    pb=0
    do i=2,n 
        var = 2*pa+pb
        pb=pa
        pa=var
    end do
    p=pa
end if
end function
end program pell_program