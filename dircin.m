function T = dircin(robot, q)

N = length(q);
A = eye(4);

for i=1:N
    A = DH(robot, i, q(i))*A;
end

T = A;