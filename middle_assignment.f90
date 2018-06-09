PROGRAM MIDDLEPROJECT
IMPLICIT NONE
REAL :: D0,DX,DY,DZ,A,B,C,D,E,F,G,H,I,X,Y,Z

A=2; B=1; C=1  
D=4; E=-6; F=0	
G=-2; H=7; I=2
D0=(A*E*I+B*F*G+C*D*H)-(C*E*G+B*D*I+A*F*H)
 
A=3; B=1; C=1
D=10; E=-6; F=0			 !3,10,-5 = FOLLOWING CUBIC EQUATION VALUE
G=-5; H=7; I=2
DX=(A*E*I+B*F*G+C*D*H)-(C*E*G+B*D*I+A*F*H)
     
A=2; B=3; C=1  
D=4; E=10; F=0	
G=-2; H=-5; I=2
DY=(A*E*I+B*F*G+C*D*H)-(C*E*G+B*D*I+A*F*H) 
 
A=2; B=1; C=3  
D=4; E=-6; F=10	
G=-2; H=7; I=-5
DZ=(A*E*I+B*F*G+C*D*H)-(C*E*G+B*D*I+A*F*H) 
 
 X=DX/D0
 Y=DY/D0
 Z=DZ/D0

 PRINT*, X,Y,Z

 END PROGRAM

 