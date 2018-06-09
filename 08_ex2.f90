
PROGRAM EXTWO

INTEGER :: I,J,K=1,L,M=0,N,MON,DC=0 
!DC=DAY COUNT, MON = MONTH, M=PRICIPITATION COUNT

REAL :: AVGSP, AVGSU, AVGFA, AVGWI	
! SP=SPRING, SU=SUMMER, FA=FALL, WI= WINTER

INTEGER, DIMENSION(365) :: STN, DATE
REAL, DIMENSION(24,365) :: TA, RN
REAL, DIMENSION(2004:2013) :: PRSP,PRSU,PRFA,PRWI
!PRSP means pricipitation at spring

OPEN(11, FILE='C:\DAEGU_PREP.TXT')
OPEN(1, FILE='C:\Users\user\Desktop\extwo.txt')
! change print to open because error 

READ(11,*)


READ(11,*) STN(1),DATE(1), (TA(I,1), I=1,24), (RN(I,1), I=1,24)
! have to read line 1

WRITE(1,*) "YEAR", "Precipitation,"


DO L= 2004,2013
 K=K+M
 PRSP(L)=0 ; PRSU(L)=0 ; PRFA(L)=0 ; PRWI(L)=0
 
 !LEAP YEAR= 2004, 2008, 2012
 IF(MOD(L,4)==0 .AND. MOD(L,100)/=0 .OR. MOD(L,400)==0) THEN
 M=366
 N=N+M
 ELSE
 M=365
 N=N+M
 END IF

 DO J= 1, N
  !READ(11,*) STN(J),DATE(J), (TA(I,J), I=1,24), (RN(I,1), I=1,24)
  !PRINT*, STN(J),DATE(J), (TA(I,J) , I=1,24), (RN(I,1), I=1,24) 

   IF(SUM(RN(:,J))/=-999*24) THEN
   DC=DC+1  
   END IF
 

  MON= MOD(DATE(J),10000)/100

    SELECT CASE(MON)
  	  !WINTER
      CASE(1,2,12)
      DO I=1,24
      IF(RN(I,J)/=-999) THEN
      PRWI(L)=PRWI(L)+RN(I,J)
      END IF ;END DO
	  
	  !SPRING
      CASE(3,4,5)
      DO I=1,24
      IF(RN(I,J)/=-999) THEN
      PRSP(L)=PRSP(L)+RN(I,J)
      END IF ; END DO

	  !SUMMER
      CASE(6,7,8)
      DO I=1,24
      IF(RN(I,J)/=-999) THEN
      PRSU(L)=PRSU(L)+RN(I,J)
      END IF ; END DO

	  !WINTER
      CASE(9,10,11)
      DO I=1,24
      IF(RN(I,J)/=-999) THEN
      PRFA(L)=PRFA(L)+RN(I,J)
      END IF ; END DO

      END SELECT

   END DO

END DO

 AVGSP=SUM(PRSP)/SIZE(PRSP)
 AVGSU=SUM(PRSU)/SIZE(PRSU)
 AVGFA=SUM(PRFA)/SIZE(PRFA)
 AVGWI=SUM(PRWI)/SIZE(PRWI)




WRITE(1,*) "YEAR", "Number of Days with Pricipitation "  
WRITE(1,*)	L, DC

WRITE(1,*) "SPRING", "SUMMER", "FALL", "WINTER"
WRITE(1,*) AVGSP, AVGSU, AVGFA, AVGWI






END PROGRAM EXTWO
