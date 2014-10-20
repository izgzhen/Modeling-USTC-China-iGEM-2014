function result(COLOR)
if (COLOR == 1)
    p = [
        1;        %1 genesis of YFD and FixJ
        0.01;        %2 death rate of YFD
        1;        %3 light rate
        0.01;        %4 death rate of FixJ/FixJP
        0.005;        %5 Kcat
        1;        %6 KM
        1;        %7 alpha CI 
        100;        %8 K CI
        0.01;        %9 death rate of CI
        10;        %10 alpha BFP
        10;        %11 K BFP
        0.01;        %12 death rate of BFP
        1;        %13 n CI
        1        %14 n BFP
    ];
    N = 5;
    [t,x] = ode45(@b,[0 720],[0 0 0 0 0],[],p,0);
   % [t1,x1] = ode45(@Blue,[1000 2000],x(size(x,1),:),[],p,0);
   % t = [t;t1];
   % x = [x;x1];
    [t2,x2] = ode45(@b,[0 720],[0 0 0 0 0],[],p,1);
    name = cell(4,1);
    name{1} = 'YF1';
    name{2} = 'FixJ';
    name{3} = 'FixJ_P';
    name{4} = 'CI';
    name{5} = 'BFP'
    for i = 1:4
        subplot(2,2,i);
        plot(t,x(:,i),'.b');hold on;
        %plot(t1,x1(:,i),'.');hold on;
        plot(t2,x2(:,i),'.r');hold off;
        title(name{i});
    end
    figure;
    i = 5;
        plot(t,x(:,i),'.b');hold on;
        %plot(t1,x1(:,i),'.');hold on;
        plot(t2,x2(:,i),'.r');hold off;
    title(name{i});
elseif (COLOR == 2)
%     p = [
%     1;%1 genesis of hol/pcyA/cph8
%     0.01;%2 death hol
%     0.01;%3 death pcyA
%     0.005;%4 catalytic Bil
%     0.01;%5 death Bil
%     0.005;%6 cata PCB
%     1;%7 KM PCB
%     0.01;%8 death PCB
%     0.01;%9 death cph8
%     10;%10 light
%     0.05;%11 Phos cph8
%     1;%12 cate CI
%     100;%13 KM CI
%     1;%14 n CI
%     0.01;%15 death CI
%     10;%16 cate RFP
%     1;%17 KM RFP
%     1;%18 n RFP
%     0.01%19 death RFP
%     ];
  p = [
    1;%1 genesis of hol/pcyA
    0.01;%2 death hol
    1;%3 light
    0;%4 genesis ccaSP
    0.01;%5 cat
    10;%6 km
    0.01;%7 cat
    10;%8 km
    10;%9 alpha
    10%10 K
    ];
    N = 5;
    name{1} = 'cph8_P';
    name{2} = 'cph8';
    name{3} = 'OmpR';
    name{4} = 'OmpR_P';
    name{5} = 'RFP'
    [t,x] = ode45(@r,[0 720],[0 0 0 0 0],[],p,0);
    %[t1,x1] = ode45(@Red,[0 2000],[0 0 0 0 0 0 0 0],[],p,0.1);
    [t2,x2] = ode45(@r,[0 720],[0 0 0 0 0],[],p,1);
    for i = 1:4
        subplot(2,2,i);
        plot(t,x(:,i),'.b');hold on;
        %plot(t1,x1(:,i),'.');hold on;
        plot(t2,x2(:,i),'.r');hold off;title(name{i});
    end
    figure;
    i = 5;
        plot(t,x(:,i),'.b');hold on;
        %plot(t1,x1(:,i),'.');hold on;
        plot(t2,x2(:,i),'.r');hold off;title(name{i});
elseif (COLOR == 3)
%     p = [
%     1;%1 genesis of hol/pcyA
%     0.01;%2 death hol
%     0.01;%3 death pcyA
%     0.005;%4 catalytic Bil
%     0.01;%5 death Bil
%     0.005;%6 cata PCB
%     1;%7 KM PCB
%     0.01;%8 death PCB
%     0.01;%9 death ccaS
%     0.1;%10 light
%     0;%11 Phos ccaSP(???)
%     1;%12 genesis ccaS
%     1;%13 genesis ccaR
%     0.01;%14 death ccaR
%     0.005;%15 Phos ccaRP
%     1;%16 cata GFP
%     1;%17 KM GFP
%     1;%18 n GFP
%     0.01%19 death GFP
%     ];
    

     p = [
    1;%1 genesis of hol/pcyA
    0.01;%2 death hol
    0.05;%3 light
    0;%4 genesis ccaSP
    0.01;%5 cat
    10;%6 km
    0.01;%7 cat
    10;%8 km
    1;%9 alpha
    10%10 K
    ];
    N = 5;
    name{1} = 'ccas';
    name{2} = 'ccas_P';
    name{3} = 'ccaR';
    name{4} = 'ccaR_P';
    name{5} = 'GFP'
    [t,x] = ode45(@g,[0 720],[0 0 0 0 0],[],p,0);
 %   [t1,x1] = ode45(@Green,[0 2000],[0 0 0 0 0 0 0 0 0],[],p,0.1);
    [t2,x2] = ode45(@g,[0 720],[0 0 0 0 0],[],p,1);
    for i = 1:4
        subplot(2,2,i);
        plot(t,x(:,i),'.b');hold on;
        %plot(t1,x1(:,i),'.');hold on;
        plot(t2,x2(:,i),'.r');hold off;title(name{i});
    end
    figure;
    i = 5;
        plot(t,x(:,i),'.b');hold on;
        %plot(t1,x1(:,i),'.');hold on;
        plot(t2,x2(:,i),'.r');hold off;
    
    title(name{i});
else
end
end