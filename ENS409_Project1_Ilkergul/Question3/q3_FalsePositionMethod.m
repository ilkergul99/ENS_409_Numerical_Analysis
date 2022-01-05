function [root, finalerror, iteration, iterscore, itervalue, iterABSerror] = q3_FalsePositionMethod(lowerbound, upperbound, maxiter)
    myfunc = @(x)exp(x^3) - 8; %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    score = fzero(myfunc, bound);
    a = 1;
    p = -1;
    while(count < maxiter)
        count = count + 1;
        FA = myfunc(bound(1));
        FB = myfunc(bound(2));
        %p = bound(1) + ((FA*(bound(1)- bound(2)))/(FB-FA));
        p = (abs(FB)*bound(1) + abs(FA)*bound(2)) / (abs(FA) + abs(FB));
        FP = myfunc(p);
        if(count == 10 || count == 50 || count == 100)
            iterscore(a)= FP;
            itervalue(a) = p;
            iterABSerror(a) = abs(0-FP);
            a = a+1;
        end
        if(FA*FP > 0)
           bound(1) = p;
        elseif(FA*FP < 0) 
           bound(2) = p; 
        else
            break;
        end    
    end
    root = p;
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end