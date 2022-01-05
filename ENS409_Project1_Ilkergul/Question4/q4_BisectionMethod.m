function [root, iteration, score] = q4_BisectionMethod(lowerbound, upperbound, maxiter, tol)
    myfunc = @(x)2*x^2 - x^3 + sin(x); %first function
    tolerance = 0.05*10^-tol; % given tolerance
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    score = fzero(myfunc, bound);
    error = 1000;
    value(1) = 0;
    i = 0;
    p = -1;
    while(error > tolerance && count < maxiter)
        i = i + 1;
        count = count + 1;
        FA = myfunc(bound(1));
        FB = myfunc(bound(2));
        p = (bound(1) + bound(2)) /2;
        FP = myfunc(p);
        value(i) = p;
        if(FA*FP > 0)
           bound(1) = p;
        elseif (FA*FP < 0)
           bound(2) = p; 
        else
           break;
        end
        if(i > 1)
            error = abs(value(i) - value(i-1))/ abs(value(i));
        end 
    end
    root = p;
    iteration = count;
end