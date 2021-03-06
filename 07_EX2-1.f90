PROGRAM EXTHREE
IMPLICIT NONE

INTEGER :: L,N,K=0,LINES=0
INTEGER,DIMENSION(:),ALLOCATABLE ::	YR,MON,DAY
REAL,DIMENSION(:),ALLOCATABLE :: TEMP,WD,WS

OPEN (1, FILE = "C:\daily_mean.txt")

 DO
  READ(1,*,END=10)
  LINES=LINES+1
 END DO
  10 CONTINUE
  L=LINES

 ALLOCATE (YR(L),MON(L),DAY(L),TEMP(L),WD(L),WS(L))
 
 REWIND(1)
 
 DO L=1,LINES
  READ(1,*) YR(L),MON(L),DAY(L),TEMP(L),WD(L),WS(L)
 END DO

 PRINT 20, "YEAR","MONTH","DAY","TEMP.","W.S."
 20 FORMAT (X,A4,5X,A5,5X,A3,5X,A5,5X,A4)

 REWIND(1)

 DO N=1,L
  IF(TEMP(N)>=25.AND.WS(N)<=2) THEN
  K=K+1
  PRINT 30, YR(N), MON(N), DAY(N), TEMP(N), WS(N) 
  30 FORMAT (X,A4,5X,A2,5X,A2,5X,A5,5X,A5)
  END IF
 END DO

 PRINT*, "Total number of target days",K,"days"

 CLOSE(1)
 END PROGRAM

