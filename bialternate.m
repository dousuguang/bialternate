function c = bialternate(a,b)
if nargin<1
    a=ones(4);
    b=eye(4);
end
if size(a,1)~=size(a,2) || size(b,1)~=size(b,2) || size(a,1)~=size(b,1)
    disp('Warning: ONLY square matrices!')
    return
end
n=size(a,1);
i=0;
c=zeros(n);
for p=2:n
    for q=1:p-1
        i=i+1;
        j=0;
        for r=2:n
            for s=1:r-1
                j=j+1;
                c(i,j)=0.5*(....
                a(p,r)*b(q,s)-a(p,s)*b(q,r)+....
                a(q,s)*b(p,r)-a(q,r)*b(p,s) ); 
            end
        end
    end
end