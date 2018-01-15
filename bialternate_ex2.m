n=4;
i=0;
for p=2:n
    for q=1:p-1
        i=i+1;
        j=0;
        fprintf('[')
        for r=2:n
            for s=1:r-1
                j=j+1;
                c=[];%sprintf('c%d%d=',i,j);
                if q==s
                    c=[c sprintf('+a%d%d',p,r)];
                end
                if q==r
                    c=[c sprintf('-a%d%d',p,s)];
                end
                if p==r
                    c=[c sprintf('+a%d%d',q,s)];
                end
                if p==s
                    c=[c sprintf('-a%d%d',q,r)];
                end
                if isempty(c)
                    c='0';
                end
                fprintf('%10s',c)
            end
        end
        fprintf(']\n')
    end
end