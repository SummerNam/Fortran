
PROGRAM FINAL

IMPLICIT NONE
INTEGER :: I,L=0,M
!L=LINE COUNT 

!DECLARATION
INTEGER, DIMENSION(:),allocatable:: STN,TM

REAL, DIMENSION(:),allocatable  :: TA,HM,WD,WS,WW,RN,SD_DAY,SD_TOT,VS,CA_TOT,PS
REAL, DIMENSION(:),allocatable  :: SI,SS
REAL, DIMENSION(:),allocatable  :: TD,CA_MID,CH_MIN,CT,PV,PA
REAL, DIMENSION(:),allocatable :: ST_GD,TS,TE_005,TE_01,TE_02,TE_03


OPEN(11, FILE='C:\stn(2004-2013).txt')
OPEN(12, FILE='C:\Users\user\Desktop\FINAL.txt')
!OPEN(13, FILE='C:\Users\user\Desktop\ca_tot.txt')

!change print to open because error 

!READ(11,*) STN(1),DATE(1), (TA(I,1), I=1,24), (RN(I,1), I=1,24)
! Don't read first line cause there aren't data format

DO
READ(11,*,END=10)
L=L+1
END DO
10 CONTINUE

I=L

	 
ALLOCATE (STN(I),TM(I),TA(24,I),HM(24,I),WD(24,I),WS(24,I),WW(24,I),SI(16,I),SS(16,I),RN(24,I),SD_DAY(24,I),SD_TOT(24,I),TD(8,I),VS(24,I),CA_TOT(24,I),CA_MID(8,I),CH_MIN(8,I),CT(8,I),PV(8,I),PA(8,I),PS(24,I),ST_GD(4,I),TS(4,I),TE_005(4,I),TE_01(4,I),TE_02(4,I),TE_03(4,I))
!ALLOCATE (STN(I),TM(I),TA(J),HM(J),WD(J),WS(J),WW(J),SI(K),SS(K),RN(J),SD_DAY(J),SD_TOT(J),TD(M),VS(J),CA_TOT(J),CA_MID(M),CH_MIN(M),CT(M),PV(M),PA(M),PS(J),ST_GD(N),TS(N),TE_005(N),TE_01(N),TE_02(N),TE_03(N))
REWIND(11)

READ(11,*)
DO M=1,L
READ(11,*) STN(M),TM(M),(TA(I,M),I=1,24),(HM(I,M),I=1,24),(WD(I,M),I=1,24),(WS(I,M),I=1,24),(WW(I,M),I=1,24),(SI(I,M),I=1,16),(SS(I,M),I=1,16),(RN(I,M),I=1,24),(SD_DAY(I,M),I=1,24),(SD_TOT(I,M),I=1,24),(TD(I,M),I=1,8),(VS(I,M),I=1,24),(CA_TOT(I,M),I=1,24),(CA_MID(I,M),I=1,8),(CH_MIN(I,M),I=1,8),(CT(I,M),I=1,8),(PV(I,M),I=1,8),(PA(I,M),I=1,8),(PS(I,M),I=1,24),(ST_GD(I,M),I=1,4),(TS(I,M),I=1,4),(TE_005(I,M),I=1,4),(TE_01(I,M),I=1,4),(TE_02(I,M),I=1,4),(TE_03(I,M),I=1,4)
END DO

IF (STN(I)==108 .OR. STN(I)==112 .OR. STN(I)==133 .OR. STN(I)==143 .OR. STN(I)==152 .OR. STN(I)==156 .OR. STN(I)==159) WRITE(12,*) (TA(I,1),I=1,24),(CA_TOT(I,1),I=1,24)


END PROGRAM FINAL



