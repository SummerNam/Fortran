

PROGRAM EXTWO
IMPLICIT NONE
INTEGER :: N, I=0 !N=NUMBER
INTEGER,DIMENSION(1000000) :: C 
READ*, N 
  
  C(1)=0
  C(2)=1
  C(3)=1
  PRINT*, C(1)
  PRINT*, C(2)
  PRINT*, C(3)

  DO I=4,N
     C(I)=C(I-2)+C(I-1)
     PRINT*, C(I) 
 
  IF(I==N) EXIT
  END DO  
  IF(N>1000000) STOP
END PROGRAM

