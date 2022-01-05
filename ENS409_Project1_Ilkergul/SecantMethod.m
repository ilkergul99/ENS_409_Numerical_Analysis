function [root, finalerror, iteration] = SecantMethod(initial, second, maxiter, tol)
    tolerance = 1.0*10^-tol; % given tolerance
    myfunc = @(x)4*x^3 - 8*x^2 + 3*x - 10; %first function
    bound = [initial second]; % boundaries
    count = 0;
    error = 1000;
    i = 3;
    while(error > tolerance && count < maxiter)
        bound(i) = bound(i-1) + (myfunc(bound(i-1))*(bound(i-2)-bound(i-1)))/ (myfunc(bound(i-1))- myfunc(bound(i-2)));
        count = count + 1;
        error = abs(bound(i) - bound(i-1));
        i = i +1;
    end
    finalerror = error;
    root = bound(i-1);
    iteration = count;
end