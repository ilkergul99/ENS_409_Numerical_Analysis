function [root, finalerror, iteration] = q2_BisectionMethod(lowerbound, upperbound, maxiter)
    myfunc = @(x)x^2 - x - exp(-x); %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    
    p = -1;
    score = fzero(myfunc, bound);
    
    while(count < maxiter)
        FA = myfunc(bound(1));
        FB = myfunc(bound(2));
        p = (bound(1) + bound(2)) /2;
        FP = myfunc(p);
        if(FA*FP > 0)
           bound(1) = p;
        elseif(FA*FP < 0) 
           bound(2) = p; 
        else
            break;
        end
        count = count + 1;
    end
    root = p;
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end