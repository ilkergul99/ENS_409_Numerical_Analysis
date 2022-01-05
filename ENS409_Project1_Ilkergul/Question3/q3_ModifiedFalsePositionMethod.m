function [root, finalerror, iteration, iterscore, itervalue, iterABSerror] = q3_ModifiedFalsePositionMethod(lowerbound, upperbound, maxiter)
    myfunc = @(x)exp(x^3) - 8; %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    leftcount = 0;
    rightcount = 0;
    score = fzero(myfunc, bound);
    a = 1;
    p = -1;
    FA = myfunc(bound(1));
    FB = myfunc(bound(2));
    while(count < maxiter)
        %p = (abs(FB)*bound(1) + abs(FA)*bound(2)) / (abs(FA) + abs(FB));
        count = count + 1;
        p = bound(1) + ((FA*(bound(1)- bound(2)))/(FB-FA));
        FP = myfunc(p);
        if(count == 10 || count == 50 || count == 100)
            iterscore(a)= FP;
            itervalue(a) = p;
            iterABSerror(a) = abs(0-FP);
            a = a+1;
        end
        if(FA*FP > 0)
           leftcount = 0; 
           rightcount = rightcount + 1;
           bound(1) = p;
           FA = myfunc(bound(1));
           if(rightcount >= 2)
               FB = FB/2;
           end
        elseif(FA*FP < 0)
           rightcount = 0; 
           leftcount = leftcount + 1; 
           bound(2) = p; 
           FB = myfunc(bound(2));
           if(leftcount >= 2)
               FA = FA/2;
           end
        else
           break;
        end
    end
    root = p;
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end