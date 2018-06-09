	PROGRAM EXONE

	IMPLICIT NONE
	INTEGER :: X=3, J=0, N=-1, FACT=1
	REAL :: E=0. !E=EXP

	DO
	 N=N+1
	  DO

	   IF(N==0) EXIT
	   J=J+1
	   FACT=FACT*J
	   IF(J==N) EXIT

	   END DO

	 
	 E=E+REAL(X)**N/FACT

	 IF(N>10) EXIT
	 PRINT*, N, E, EXP(3.0)-E/(EXP(3.0)*100)
	 !  EXP(3.0)-E/EXP(3.0)*100 IS ERROR FACTOR
	 
	 END DO

  END PROGRAM