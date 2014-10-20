function dydt = b(t,x,p,i)
%x    
    %YF1D
    %FixJ
    %FixJP
    %CI
    %BFP
%p
    %1 genesis of YFD and FixJ
    %2 death rate of YFD
    %3 light rate
    %4 death rate of FixJ/FixJP
    %5 Kcat
    %6 KM
    %7 alpha CI 
    %8 K CI
    %9 death rate of CI
    %10 alpha BFP
    %11 K BFP
    %12 death rate of BFP
    %13 n CI
    %14 n BFP
    dydt = [
         p(1)-p(2)*x(1)-p(3)*i(1)*x(1);
         p(1)-p(4)*x(2)-p(5)*x(1)*x(2)/((x(2))+(p(6)));
         p(5)*x(1)*x(2)/((x(2))+(p(6))) - p(4)*x(3);
         p(7)*x(3)/((x(3))^p(13)+(p(8))^p(13)) - p(9)*x(4);
         p(10)/((p(11))^p(14)+(x(4))^p(14)) - p(12)*x(5)
    ];
end