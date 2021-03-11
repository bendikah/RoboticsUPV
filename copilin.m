function A = copilin(linea,matriz)
col=[0.1 0.9 0];
[P1, P2] = extrae(linea);
lineacopi=crealin(P1,P2,col);
dibulin(lineacopi,matriz);
A = lineacopi;
end

