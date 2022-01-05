function [root, finalerror, iteration] = q2_ModifiedFalsePositionMethod(lowerbound, upperbound, maxiter)
   
    myfunc = @(x)x^2 - x - exp(-x); %first function
    bound = [lowerbound upperbound]; % boundaries
    count = 0; %iteration count
    leftcount = 0;
    rightcount = 0;
    score = fzero(myfunc, bound);
    p = -1;
    FA = myfunc(bound(1));
    FB = myfunc(bound(2));
    while(count < maxiter)
        %p = (abs(FB)*bound(1) + abs(FA)*bound(2)) / (abs(FA) + abs(FB));
        p = bound(1) + ((FA*(bound(1)- bound(2)))/(FB-FA));
        FP = myfunc(p);
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
        count = count + 1;
    end
    root = p;
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end