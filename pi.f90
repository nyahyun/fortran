program pi
        implicit none
        integer :: i
        real(4) :: den, start_time, end_time
        real(16) :: pie, res
        
        pie = 1.0
        den = 3
        
        call cpu_time(start_time)
        do i = 2, 10000000, 1
                if (mod(i, 2) == 0) then
                       pie = pie - 1/den
                       print *, 'den', den
                       print *, 'den == even' , pie
                else
                        pie = pie + 1/den
                        print *, 'den', den
                        print *, 'den == odd' , pie
                end if
                den = den + 2
        end do
        res = 4*pie
        print *, res
        call cpu_time(end_time)
        print *, 'CAL TIME : ', end_time - start_time
end program pi
