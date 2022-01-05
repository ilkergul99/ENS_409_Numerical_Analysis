function [root, finalerror, iteration] = NewtonMethod(initial, maxiter, tol)
    tolerance = 1.0*10^-tol; % given tolerance
    myfunc = @(x)4*x^3 - 8*x^2 + 3*x - 10; %first function
    derivative = @(x)12*x^2 - 16*x + 3; % derivative of the function
    bound(1) = initial; % boundaries
    count = 0; 
    error = 1000;
    i = 2;
    while(error > tolerance && count < maxiter)
        bound(i) = bound(i-1) - (myfunc(bound(i-1))/derivative(bound(i-1)));
        count = count + 1;
        error = abs(bound(i)- bound(i-1));
        i = i + 1;
    end
    root = bound(i-1);
    finalerror = error;
    iteration = count;
end