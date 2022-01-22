program circle_area

    dimension R(10)

    PI = 3.141593
    R(1) = 2.28
    do i = 2, 10
        R(i) = R(i-1) + 1.0
    end do

    do i = 1, 10
        perimeter = 2*PI*R(i)
        area = PI*R(i)**2
        print *,i, ') R = ', R(i), 'Perimeter = ', perimeter
        print *,i, ') R = ', R(i), 'aera = ', area
    end do

end program circle_area
