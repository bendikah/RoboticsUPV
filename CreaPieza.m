% Crea un cubo de 200X200X200

arista1= crealin(punto([0;0;0]),punto([0;0;200]),[1 1 0]);
arista2=copilin(arista1,despl(200,0,0));
arista3=copilin(arista1,rotay(pi/2));
arista4=copilin(arista3,despl(0,0,200));
cara1=[arista1;arista2;arista3;arista4];
cara2=copiobj(cara1,despl(0,200,0));

arista5=copilin(arista1,rotax(-pi/2));
arista6=copilin(arista5,despl(200,0,0));
arista7=copilin(arista6,despl(0,0,200));
arista8=copilin(arista7,despl(-200,0,0));

pieza=[cara1;cara2;arista5;arista6;arista7;arista8];

dibuobj(pieza,despl(-1000,1000,1000))

grid on;
view(45,45);