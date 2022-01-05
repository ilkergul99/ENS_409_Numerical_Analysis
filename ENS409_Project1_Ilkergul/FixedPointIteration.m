function [root, finalerror, iteration] = FixedPointIteration(initial, maxiter, tol)
    tolerance = 1.0*10^-tol; % given tolerance
    func_g = @(x)(10 + 8*x^2)/(4*x^2 + 3); %I converted this from the main function
    myfunc = @(x)4*x^3 - 8*x^2 + 3*x - 10;
    value(1) = initial; 
    count = 0; 
    error = 1000;
    i = 2;
    while(error > tolerance && count < maxiter)
        value(i) = func_g(value(i-1));
        count = count + 1;
        error = abs(value(i) - value(i-1));
        i = i + 1;
    end
    root = value(i-1);
    finalerror = error;
    iteration = count;
end