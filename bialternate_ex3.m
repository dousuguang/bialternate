clc
clear

n=6;
i=0;
fprintf('\nBialternate product of A & I%d: \n\n',n)
for p=2:n
    for q=1:p-1
        i=i+1;
        j=0;
        fprintf('[')
        for r=2:n
            for s=1:r-1
                j=j+1;
                c={};
                if q==s
                    c=[c {sprintf('+a%d%d',p,r)}];
                end
                if q==r
                    c=[c {sprintf('-a%d%d',p,s)}];
                end
                if p==r
                    c=[c {sprintf('+a%d%d',q,s)}];
                end
                if p==s
                    c=[c {sprintf('-a%d%d',q,r)}];
                end
                if isempty(c)
                    c='0';
                end
                c = string(c);
                c = sort(c);
                if c{1}(1)=='+'
                    c{1}(1)=[];
                end
                fprintf('%8s',strjoin(c,''))
            end
        end
        fprintf(' ]\n')
    end
end
fprintf('\n')