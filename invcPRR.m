% Devuelve las cuatro soluciones posibles de la cinemática inversa de un robot PRR.
% Los datos de entrada son la matriz que define el robot y la matriz homogenea deseada
% del sistems de coordenadas del origen al del efector final.

function [q1, q2, q3, q4]=invcPRR(rob, matriz)

% Se extraen la matriz de rotación, el vector de posición y el eje z deseado.

R06= rotacion(matriz);
p6=pos(matriz);
z6=EjeZeta(matriz);

% Se encuentra la posición deseada de los sist. coord. 4 y 5.

d6=rob(7,3);
p45=p6-d6*z6;

% Se encuentran las dos configuraciones posibles que ponen los sist. coord. 4 y 5
% en la posición deseada.

[q_izd, q_der]=ciPRR1_3(rob,p45);

% Se encuentra las coordenadas de las tres últimas articulaciones para los dos casos.
[q_i1, q_i2]=ciPRR3_6(rob,matriz,q_izd);
[q_d1, q_d2]=ciPRR3_6(rob,matriz,q_der);

q1=[q_izd q_i1];
q2=[q_izd q_i2];
q3=[q_der q_d1];
q4=[q_der q_d2];

