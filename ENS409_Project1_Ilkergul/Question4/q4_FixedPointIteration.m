function [root, iteration, score] = q4_FixedPointIteration(initial, maxiter, tol)
    tolerance = 0.05*10^-tol; % given tolerance
    func_g = @(x)(2*x^2 + sin(x))^(1/3);   %I converted this from the main function
    value(1) = initial;
    myfunc = @(x)2*x^2 -x^3 + sin(x); %first function
    count = 0; 
    score = fzero(myfunc, [1 3]);
    error = 1000;
    i = 1;
    while(error > tolerance && count < maxiter)
        i = i + 1;
        value(i) = func_g(value(i-1));
        count = count + 1;
        if(i > 1)
            error = abs(value(i) - value(i-1))/ abs(value(i));
        end      
    end
    root = value(i);
    iteration = count;
end