
10 X1=59
15 Y1=21
20 I1=-1.0
21 I2=1.0
22 R1=-2.0
23 R2=1.0
30 S1=(R2-R1)/X1
31 S2=(I2-I1)/Y1
40 FOR Y=0 TO Y1
50 I3=I1+S2*Y
60 FOR X=0 TO X1
70 R3=R1+S1*X
71 Z1=R3
72 Z2=I3
80 FOR N=0 TO 30
90 A=Z1*Z1
91 B=Z2*Z2
100 IF A+B>4.0 GOTO 130
110 Z2=2*Z1*Z2+I3
111 Z1=A-B+R3
120 NEXT N
130 PRINT CHR$(63-N);
140 NEXT X
150 PRINT
160 NEXT Y
170 GOTO 10
