% Modifica los ptos inicial y final de una linea a P1 y P2.

function dibulin(linea,matriz)
col=[0.1 0.9 0];
[P1, P2]=extrae(linea);
P1=matriz*P1;
P2=matriz*P2;
modlin(linea,P1,P2);
%linea = crealin(P1,P2,col);
