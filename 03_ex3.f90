﻿!
!  SourceFile2.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  2014-10-10 오후 1:28:55


PROGRAM EXTHREE
INTEGER:: I,N,SUM,A
SUM=0

READ*, N

DO I=1,N
SUM=SUM+I
A=SUM+A

END DO
PRINT*, A

END PROGRAM EXTHREE