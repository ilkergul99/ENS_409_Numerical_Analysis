function [root, finalerror, iteration] = q2_SecantMethod(initial, second, maxiter)
    
    myfunc = @(x)x^2 - x - exp(-x); %first function
    bound = [initial second]; % boundaries
    count = 0; 
    score = fzero(myfunc, [1,2]);
    i = 3;
    while(count < maxiter)
        bound(i) = bound(i-1) + (myfunc(bound(i-1))*(bound(i-2)-bound(i-1)))/ (myfunc(bound(i-1))- myfunc(bound(i-2)));
        count = count + 1;
        i = i +1;
    end
    root = bound(i-1);
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end