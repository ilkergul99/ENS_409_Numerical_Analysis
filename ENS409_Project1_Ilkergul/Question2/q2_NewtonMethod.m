function [root, finalerror, iteration] = q2_NewtonMethod(initial, maxiter)
    myfunc = @(x)x^2 - x - exp(-x); %first function
    derivative = @(x)2*x + exp(-x) -1; % derivative of the function
    bound(1) = initial; % boundaries
    count = 0; 
    score = fzero(myfunc, [1 2]);
    i = 2;
    while(count < maxiter)
        bound(i) = bound(i-1) - (myfunc(bound(i-1))/derivative(bound(i-1)));
        count = count + 1;
        i = i + 1;
    end
    root = bound(i-1);
    relative = abs(score - root)/abs(score);
    finalerror = relative;
    iteration = score;
end