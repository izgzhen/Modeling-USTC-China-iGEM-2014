function LF(COLOR)
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
    t = [0,0.0001,0.001:0.001:0.01,0.01:0.05:0.1,0.1:0.1:1]';
    N = size(t);N = N(1);
    x = t;
    for i = 1:N
        [te,xe] = ode45(@b,[0 720],[0 0 0 0 0],[],p,t(i));
        x(i) = xe(end,5)
    end
    plot(t,x);
axis([0 1.1 0 110]);          
    
elseif (COLOR == 2)
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
    t = [0,0.0001,0.001:0.001:0.01,0.01:0.05:0.1,0.1:0.1:1]';
    N = size(t);N = N(1);
    x = t;
    for i = 1:N
        [te,xe] = ode45(@r,[0 720],[0 0 0 0 0],[],p,t(i));
        x(i) = xe(end,5)
    end
    plot(t,x,'r');
    axis([0 1.1 0 110]);          
    
elseif (COLOR == 3)
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
    t = [0,0.0001,0.001:0.001:0.01,0.01:0.05:0.1,0.1:0.1:1]';
    N = size(t);N = N(1);
    x = t;
    for i = 1:N
        [te,xe] = ode45(@g,[0 720],[0 0 0 0 0],[],p,t(i));
        x(i) = xe(end,5)
    end
    plot(t,x,'g');
axis([0 1.1 0 110]);          
    else
end

end