PROGRAM EXTWO
IMPLICIT NONE
INTEGER :: N, I=0, A=1, B=0, C=0 !N=NUMBER
 READ*, N
 
  DO 
     I=I+1
	 C=A+B
	 PRINT*, C	  
	 
	 A=B
	 B=C
 
	 IF(I==N) EXIT
  END DO  
 

END PROGRAM