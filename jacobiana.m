function J = jacobiana(robot, q)

[Origenes, Vectores, Zetas]=Encontrar_Origenes(robot,q);

N=size(robot,1)-1;

eje=N;

P=Origenes(:,eje)+Vectores(:,eje);
J=zeros(6,N);

for j=1:eje,
    zeta=Zetas(:,j);
		if robot(j+1,5)==0 %si articulaci�n j es de revoluci�n
			R=P-Origenes(:,j);
			d = cross(zeta,R);
			delta = zeta;
		else
			% articulaci�n prism�tica 
			d = zeta;		% nz oz az
			delta = zeros(3,1);	%  0  0  0
		end

        J(:,j)=[d; delta];
end

