function [root, iteration, score] = q4_FalsePositionMethod(lowerbound, upperbound, maxiter, tol)
    tolerance = 0.05*10^-tol; % given tolerance
    myfunc = @(x)2*x^2 -x^3 + sin(x); %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    error = 1000;
    score = fzero(myfunc, bound);
    value(1) = 0;
    i = 0;
    p = -1;
    while(error > tolerance && count < maxiter)
        i = i + 1;
        count = count + 1;
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
        if(i > 1)
            error = abs(value(i) - value(i-1))/ abs(value(i));
        end 
    end
    root = p;
    iteration = count;
end