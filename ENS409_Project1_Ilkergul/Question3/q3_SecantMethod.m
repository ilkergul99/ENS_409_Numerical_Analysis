function [root, finalerror, iteration, iterscore, itervalue, iterABSerror] = q3_SecantMethod(initial, second, maxiter)
    myfunc = @(x)exp(x^3) - 8; %first function
    bound = [initial second]; % boundaries
    count = 0; 
    score = fzero(myfunc, [0 3]);
    a = 1;
    i = 3;
    while(count < maxiter)
        bound(i) = bound(i-1) + (myfunc(bound(i-1))*(bound(i-2)-bound(i-1)))/ (myfunc(bound(i-1))- myfunc(bound(i-2)));
        count = count + 1;
        if(count == 10 || count == 50 || count == 100)
            iterscore(a)= myfunc(bound(i));
            itervalue(a) = bound(i);
            iterABSerror(a) = abs(0-iterscore(a));
            a = a+1;
        end
        i = i +1;
    end
    root = bound(i-1);
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end