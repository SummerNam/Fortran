 PROGRAM EXONE
 
 IMPLICIT NONE

 INTEGER::I,L=0,J,Y,M,D
 REAL :: MTEMP,MWD,MWS
 INTEGER, DIMENSION(:), ALLOCATABLE :: STN,YR,MON,DAY,HR
 REAL,DIMENSION(:),ALLOCATABLE :: TEMP,WD,WS
 

 OPEN(11,FILE="C:\108_2004to2013.txt")
 OPEN(12,FILE="C:\Users\user\Desktop\daily_mean.txt")

 DO
 READ(11,*,END=10)
 L=L+1
 END DO
 10 CONTINUE

 I=L     
 
 ALLOCATE (STN(I),YR(I),MON(I),DAY(I),HR(I),TEMP(I),WD(I),WS(I))

 REWIND(11)

 DO I=1,L
 READ(11,*) STN(I),YR(I),MON(I),DAY(I),HR(I),TEMP(I),WD(I),WS(I)
 END DO
                           
 WRITE(12,20) "year","month","day","m_temp.","m_w.d.","m_w.s."
  20 FORMAT(1X,A4,1X,A5,1X,A3,5X,A7,3X,A6,7X,A6)

  do j=1,L,24
  MTEMP=SUM(temp(J:J+23))/24
  MWD=SUM(wd(J:J+23))/24
  MWS=SUM(ws(J:J+23))/24

Y=YR(j)
M=MON(j)
D=DAY(j)

write(12,*) Y,M,D,MTEMP,MWD,MWS


end do

END PROGRAM
