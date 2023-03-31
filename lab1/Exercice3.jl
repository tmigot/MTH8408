
write(stdin.buffer, 0x0C);

function f(x; alpha=1)
    return x^alpha
end

N=20;
x=1;

A=zeros((N,1));
for i=1:N
    A[i,1]=i;
end


Basis=zeros((N,1));
for i=1:N
    Basis[i,1]=exp(A[i,1]*x);
end


M=zeros((N,N));
for i=1:N
    for j=1:N
        M[i,j]=(A[i,1])^(j-1);
    end
end

display(M*inv(M))

D=zeros((N,N));
for i=1:N
    D[i,i]=f(A[i,1]);
end


B=zeros((N,1));
for i=1:N
    B[i,1]=1/(factorial(i))
end
# B[2,1]=1;


B_tranform = M*D*inv(M)*B;

display(B_tranform)


print(sum(B_tranform))