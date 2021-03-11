%Devuelve la matriz de rotación con respecto al eje x.

function A = despl(dx,dy,dz)
	
	

	A =[1	0	0	dx
		0	1	0	dy
		0	0	1	dz
		0	0	0	1   ];
