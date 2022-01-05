function [root, finalerror, iteration] = q2_FixedPointIteration(initial, maxiter)
    myfunc = @(x)x^2 - x - exp(-x); %first function
    func_g = @(x)x - x^2 + x + exp(-x); %I converted this from the main function
    x(1) = initial; 
    count = 0; 
    score = fzero(myfunc, [1 2]);
    i = 2;
    while(count < maxiter)
        x(i) = func_g(x(i-1));
        count = count + 1;
        i = i + 1;
    end
    root = x(i-1);
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end