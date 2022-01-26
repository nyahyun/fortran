program circle_area

      implicit none
      
      integer, parameter :: N = 10
      real, parameter :: P = 3.141593
      real, dimension(N) :: R
      real :: area, perimeter
      integer :: i

      do i = 1,N
        print *, 'Enter radius of circle : '
        read *, R(i)
        print *, 'i = ', i, ' R(i) = ', R(i)
    end do

    open(UNIT=13, FILE = 'AREA.DAT')

    do i = 1, N
        call area_of_circle(R(i), perimeter, area)
        write(13, *)i, ') R = ', R(i), ' area = ', area,&
            ' perimeter = ', perimeter
    end do

    close(13)

end program circle_area

subroutine area_of_circle(R, L, A)

    implicit none
    real :: R, L, A
    real, parameter :: PI = 3.141593, PI2 = 2.0*PI
    
    L = PI2*R
    A = PI*R*R

    return

end subroutine area_of_circle
