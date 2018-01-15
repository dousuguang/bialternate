n=4;
i=0;
for p=2:n
    for q=1:p-1
        i=i+1;
        j=0;
        for r=2:n
            for s=1:r-1
                j=j+1;
                fprintf('c%d%d%d%d%d%d=',i,j,p,q,r,s);
                if q==s
                    fprintf('+a%d%d',p,r)
                end
                if q==r
                    fprintf('-a%d%d',p,s)
                end
                if p==r
                    fprintf('+a%d%d',q,s)
                end
                if p==s
                    fprintf('-a%d%d',q,r)
                end
                fprintf('\n')
            end
        end
    end
end