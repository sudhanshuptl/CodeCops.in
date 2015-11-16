function [ ct ] = sesort( a,no )
% Selection Sort
ct=0;
for i=1:(no-1)
    iMin = i;
    for j=(i+1):no
        ct=ct+1;
        if (a(j) < a(iMin)) 
            iMin = j;
        end
     end    
        if(iMin ~= i) 
            t=a(iMin);a(iMin)=a(i);a(i)=t;
        end
end
end
