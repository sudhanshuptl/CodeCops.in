function [ cp] = Inssort( a,no )
%Insertion Sort
cp=0;
for j = 2:no
    pivot = a(j);
    i = j;
    while ((i > 1) && (a(i - 1) > pivot))
        cp=cp+1;
        a(i) = a(i - 1);
        i = i - 1;
    end
    a(i) = pivot;
end
end
