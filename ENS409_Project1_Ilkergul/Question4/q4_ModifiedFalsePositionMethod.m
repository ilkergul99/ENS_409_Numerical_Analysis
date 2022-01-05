function [root, iteration, score] = q4_ModifiedFalsePositionMethod(lowerbound, upperbound, maxiter, tol)
    tolerance = 0.05*10^-tol; % given tolerance
    myfunc = @(x)2*x^2 -x^3 + sin(x); %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    leftcount = 0;
    rightcount = 0;
    error = 1000;
    score = fzero(myfunc, bound);
    value(1) = 0;
    i = 0;
    p = -1;
    FA = myfunc(bound(1));
    FB = myfunc(bound(2));
    while(error > tolerance && count < maxiter)
        i = i + 1;
        count = count + 1;
        %p = (abs(FB)*bound(1) + abs(FA)*bound(2)) / (abs(FA) + abs(FB));
        p = bound(1) + ((FA*(bound(1)- bound(2)))/(FB-FA));
        FP = myfunc(p);
        value(i) = p;
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
        if(i > 1)
            error = abs(value(i) - value(i-1))/ abs(value(i));
        end 
        
    end
    root = p;
    iteration = count;
end