function x=step(t)
for k=1:length(t)
        if t(k)>=0
            x(k)=1;
        else
            x(k)=0;       
        end
end
return