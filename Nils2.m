%%%From 3.2: Modelado Del Entorno De Trabajo Del Robot%%%
clear;
clf;
tabla1=crealin([eye(3) [600;600;1000];0 0 0 1], [eye(3) [600;-600;1000] ;0 0 0 1],[0.1 0.1 1]);
[P1 P2]=extrae(tabla1);
P1=rotaz(pi/2)*P1;
P2=rotaz(pi/2)*P2;

tabla2=crealin(P1,P2,[0.1 0.1 1]);
%P2=despl(-400,-1200,0)*P2;

P1 = rotaz(pi/2)*P1;
P2 = rotaz(pi/2)*P2;
tabla3=crealin(P1,P2,[0.1 0.1 1]);

P1 = rotaz(pi/2)*P1;
P2 = rotaz(pi/2)*P2;
tabla4=crealin(P1,P2,[0.1 0.1 1]);

tabla=[tabla1;tabla2;tabla3;tabla4];

%dibuobj(tabla,despl(0,0,200));

%copilin(tabla2,despl(100,100,100));

%tabla2=copiobj(tabla, despl(-100,-100,-100));

pata1=crealin([eye(3) [600;-600;1000];0 0 0 1], [eye(3) [600;-600;0] ;0 0 0 1],[0.1 0.1 1]);
pata2=copilin(pata1,despl(0,1200,0));
pata3=copilin(pata1,despl(-1200,1200,0));
pata4=copilin(pata1,despl(-1200,0,0));

mesa = [tabla;pata1;pata2;pata3;pata4];
%dibuobj(mesa,despl(100,0,200));
mesa2 = copiobj(mesa,despl(5000,5000,5000));

xlabel("x");
ylabel("y");
zlabel("z");
view(45,45);
grid on