% Traslada o gira un objeto seg�n la matriz homog�nea dada.

function dibuobj(obj,matriz)

N=length(obj);

for i=1:N
	
	dibulin(obj(i),matriz);
	
end