function dydt = g(t,x,p,i)
%x
    % ccaS
    % ccaSP
    % ccaR
    % ccaRP
    % gFP
%parameter 
    %1 genesis of hol/pcyA
    %2 death hol
    %3 light
    %4 genesis ccaSP
    %5 cat
    %6 km
    %7 cat
    %8 km
    %9 alpha
    %10 K
    %
    dydt = [
        p(1) - p(2)*x(1) - p(3)*i(1)*x(1) - p(4)*x(1);
        p(3)*i(1)*x(1) - p(2)*x(2) + p(4)*x(1);
        p(1)- p(2)*x(3) - p(5)*x(2)*x(3)/(x(3) + p(6)) + p(7)*x(1)*x(4)/(x(4) + p(8));
        p(5)*x(2)*x(3)/(x(3) + p(6)) - p(7)*x(1)*x(4)/(x(4) + p(8)) - p(2)*x(4);
        p(9)*x(4)/(p(10)+x(4)) - p(2)*x(5)
    ];   
end