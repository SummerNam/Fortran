﻿!
!  SourceFile2.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  2014-10-10 오후 1:12:23
!
PROGRAM EXTWO
IMPLICIT NONE
INTEGER :: N
READ*, N
 
 DO N=0,1000,N
  IF(N>0) PRINT*, N
 END DO
END PROGRAM