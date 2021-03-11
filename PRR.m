% Representación de un robot PRR con muñeca en línea.
clf

%  alpha    a    d    theta tipo  xi  yi  zi  xf  yf  zf   R   G   B
r1=[0   0    0     0     0    0   0   0   0   0  2000  1   0   1;
     0      0  1000    0     1    0   0 -100  0   0  100   0   1   1;
     0    -1000  0    pi/2   0  1000  0   0   0   0   0    0   0  0.9;
   pi/2     0    0   -pi/2   0    0   0   0   0   0  900   0   1   0;
  -pi/2     0  1000    0     0    0  100  0   0   0   0    1   0   0
   pi/2     0    0     0     0    0   0   0   0   0  100  0.5 0.5  0;
     0      0   200    0     0    0   0 -100  0   0   0   0.4 0.8 0.8];
 
 
 %dh1=DH(r1,2,pi/4);
 %robot=crearob(r1,[1000,pi,-pi/2,0,pi/2,0]');
%robot1=crearob(r1,[0,0,0,0,0,0]');
 %modrob(r1,[1000,0,0,0,0,0]',robot);
 %modrob(r1,[1000,pi/2,pi/8,-pi/8,0,0]',robot);
 %modrob(r1,[1000,pi/2,pi/8,-pi/8,pi/4,0]',robot);

q1 = [0,0,0,0,0,0]';
T1 = dircin(r1,q1);
%T2 = dircin_gen(r1,q1,eye(4),eye(4)+100*eye(4));

qi1 = [0,0,0,0,0,0]';
qf1 = [pi,2,pi,pi,pi,pi]';

tray1 = gentray(qi1,qf1,1);
plot(tray1);

xlabel("x");
ylabel("y");
zlabel("z");
grid on
view(45,45);