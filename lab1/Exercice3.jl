
function f(x; alpha=1)
    return x^alpha
end

N=20;
M=zeros((N+1,N+1));

M[1,1] = 1;
for i=1:N
    for j=1:N
        M[i+1,j+1]=i^(j-1);
    end
end


D=zeros((N+1,N+1));
k=0
for i=0.:N
    D[i+1,i+1]=f(k);
    k+=1
end


B=zeros((N+1,1));
B[2,1]=1;


B_tranform = M*D*inv(M)*B
