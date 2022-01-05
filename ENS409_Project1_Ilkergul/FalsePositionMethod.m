function [root, finalerror, iteration] = FalsePositionMethod(lowerbound, upperbound, maxiter, tol)
    tolerance = 1.0*10^-tol; % given tolerance
    myfunc = @(x)4*x^3 - 8*x^2 + 3*x - 10; %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    error = 1000;
    i = 0;
    value(1) = 0;
    p = -1;
    while(error >= tolerance && count < maxiter)
        i = i + 1;
        FA = myfunc(bound(1));
        FB = myfunc(bound(2));
        p = bound(1) + ((FA*(bound(1)- bound(2)))/(FB-FA));
        FP = myfunc(p);
        value(i) = p;
        if(FA*FP > 0)
           bound(1) = p;
        elseif(FA*FP < 0)
           bound(2) = p; 
        else 
           break;
        end
        if(i >1)
           error = abs(value(i) - value(i-1)); 
        end
        count = count + 1;
    end
    root = p;
    finalerror = error;
    iteration = count;
end