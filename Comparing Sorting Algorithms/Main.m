% Main Driver Script
x=zeros(1,10);
y=zeros(1,10);
z=zeros(1,10);
u=zeros(1,10);
v=zeros(1,10);
k=1;ft=0;
for n=10:10:100    
    a=round(rand(1,n)*100);
    %a=sort(a);%for sorted data
    %a=fliplr(a);%for reverse data
    %     a=zeros(1,n);%for almost sorted data
    %     for j=1:i
    %      if(j<i-i/10)
    %             a(j)=j;   
    %     else
    %        a(j)=round(1000*rand(1,1));
    %     end;
    %    end;
   b=a;c=a;d=a;
    x(k)=n;
    no=length(a);
    ct=sesort(a,no);            %    selection sort
    dt=bubblesort(b,no);        %    bubble sort
    et=Inssort(c,no);           %    Insertion sort
    ft=quicksort(d,no,1,no,ft); %    quick sort
    y(k)=ct;z(k)=dt;u(k)=et;v(k)=ft;
    ct=0;dt=0;et=0;ft=0;
    k=k+1;
end
plot(x,y,x,z,x,u,x,v);
legend('Selection','Bubble','Insertion','Quick');
disp(x);disp(y);disp(z);disp(u);disp(v);
