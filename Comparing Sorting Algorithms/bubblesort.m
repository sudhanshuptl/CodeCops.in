function [ ct ] = bubblesort( a,no ) 
%Bubble Sort
ct=0;
for i=1:no
    for j=1:no-i
        ct=ct+1;
        if(a(j)>a(j+1))
           t=a(j);a(j)=a(j+1);a(j+1)=t;
        end
    end
end 
end
