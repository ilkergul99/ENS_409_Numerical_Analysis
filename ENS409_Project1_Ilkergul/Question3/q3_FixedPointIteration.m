function [root, finalerror, iteration, iterscore, itervalue, iterABSerror] = q3_FixedPointIteration(initial, maxiter)
    myfunc = @(x)exp(x^3) - 8; %first function
    func_g = @(x)x - exp(x^3) + 8; %I converted this from the main function
    %func_g = @(x)log(8)^(1/3);
    x(1) = initial; 
    count = 0; 
    score = fzero(myfunc, [0 3]);
    a = 1;
    i = 2;
    while(count < maxiter)
        x(i) = func_g(x(i-1));
        count = count + 1;
        if(count == 10 || count == 50 || count == 100)
            iterscore(a)= myfunc(x(i));
            itervalue(a) = x(i);
            iterABSerror(a) = abs(0-iterscore(a));
            a = a+1;
        end
        i = i + 1;
    end
    root = x(i-1);
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end