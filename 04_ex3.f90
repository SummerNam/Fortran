PROGRAM EXTHREE
IMPLICIT NONE

INTEGER :: I
CHARACTER(LEN=10) :: STAR

 DO I=1,10
 STAR(I:I)="*"
 PRINT*, STAR
 END DO


 DO I=1,5
 IF(I==1.OR.I==5) PRINT*,"   *"
 IF(I==2.OR.I==4) PRINT*,"  ***"
 IF(I==3) PRINT*," *****"
 END DO

END PROGRAM


