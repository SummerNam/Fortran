PROGRAM CRAMERSRULE

IMPLICIT NONE
INTEGER :: A,AX,AY,AZ,X,Y,Z
INTEGER, DIMENSION(9) :: D, DX, DY, DZ    ! USE PRIMARY DIMENSION

 D=(/2,1,1,4,-6,0,-2,7,2/)
 DX=(/3,1,1,10,-6,0,-5,7,2/)       !2,4,-2 IS SUBTITUTED BY VALUE(3,10,-5)
 DY=(/2,3,1,4,10,0,-2,-5,2/)       !1,-6,7 IS SUBTITUTED BY VALUE(3,10,-5)
 DZ=(/2,1,3,4,-6,10,-2,7,-5/)      !1,0,2 IS SUBTITUTED BY VALUE(3,10,-5)
 
 A=D(1)*(D(5)*D(9)-D(6)*D(8))-D(2)*(D(9)*D(4)-D(6)*D(7))+D(3)*(D(4)*D(8)-D(5)*D(7))
 AX=DX(1)*(DX(5)*DX(9)-DX(6)*DX(8))-DX(2)*(DX(9)*DX(4)-DX(6)*DX(7))+DX(3)*(DX(4)*DX(8)-DX(5)*DX(7))
 AY=DY(1)*(DY(5)*DY(9)-DY(6)*DY(8))-DY(2)*(DY(9)*DY(4)-DY(6)*DY(7))+DY(3)*(DY(4)*DY(8)-DY(5)*DY(7))
 AZ=DZ(1)*(DZ(5)*DZ(9)-DZ(6)*DZ(8))-DZ(2)*(DZ(9)*DZ(4)-DZ(6)*DZ(7))+DZ(3)*(DZ(4)*DZ(8)-DZ(5)*DZ(7))

 X=AX/A
 Y=AY/A
 Z=AZ/A

 PRINT*, "X,Y,Z=", X,Y,Z

 END PROGRAM
