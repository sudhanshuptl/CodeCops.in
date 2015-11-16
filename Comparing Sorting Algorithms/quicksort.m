function [ count,a ] = quicksort(a,n,l,h,count)
%Quick Sort
if(l<h)
i=l+1;
j=h;
pivot=a(l);
count=count+1;
while(i<=j)
    count=count+1;
   while(i<=h && a(i)<pivot)
    count=count+1;
    i=i+1;
   end;
   while(j>=l && a(j)>pivot)
       count=count+1;
       j=j-1;
   end;
   count=count+1;
   if(i<j)
       temp=a(i);
       a(i)=a(j);
       a(j)=temp;
       i=i+1;
       j=j-1;
   else
       i=i+1;
   end;
end;
temp=a(j);
a(j)=pivot;
a(l)=temp;
pivoc=j;
[count,a]=quicksort(a,n,l,pivoc-1,count);
[count,a]=quicksort(a,n,pivoc+1,h,count);
end;
end
