% Define y dibuja espacio 3D
clf					% Borra ventana gr�fica 
v = 2000;				% Define volumen de trabajo
axis([-v v -v v 0 v]);			% Define ejes de coordenadas
axis square;
figure(gcf);				% Pone la ventana en primer plano
xlabel('X')				% Etiqueta ejes de coordenadas
ylabel('Y')					
zlabel('Z')
%set(gca, 'drawmode', 'fast'); % Descomentar para versiones anteriores a
%2015
grid				% Dibuja la rejilla del sistema de coordenadas

