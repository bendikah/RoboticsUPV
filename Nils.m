inigraf;

P=[eye(3),[100;100;100];0 0 0 1];
P=rotay(pi/4)*P;
P=rotax(pi/4)*P;

P2=rotaz(pi)*P;

P3=despl(100,100,100)*P2;

linuno=line('xdata',[0;1000],'ydata',[0;1000],'zdata',[0;1000],'color','red');

lindos=line('xdata',[0;-2000],'ydata',[0;-2000],'zdata',[0;4000],'color',[0.8 0.1 0.8]);

P1=punto([0;0;0]);

P2=despl(1000,0,0)*P1;

col=[0.1 0.9 0];

lintres=crealin(P1,P2,col);


set(lintres,'ydata',[-1000;-2000],'color','yellow');

dibulin(lindos,despl(100,100,100));

obj1 = [linuno, lindos, lintres];

dibuobj(obj1,despl(100,100,100));

view(45,45);


