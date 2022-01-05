function [root, iteration, score] = q4_NewtonMethod(initial, maxiter, tol)
    tolerance = 0.05*10^-tol; % given tolerance
    myfunc = @(x)2*x^2 -x^3 + sin(x); %first function
    derivative = @(x)4*x - 3*x^2 + cos(x); % derivative of the function
    bound(1) = initial; % boundaries
    count = 0; 
    score = fzero(myfunc, [1 3]);
    error = 1000;
    i = 1;
    while(error > tolerance && count < maxiter)
        i = i + 1;
        bound(i) = bound(i-1) - (myfunc(bound(i-1))/derivative(bound(i-1)));
        count = count + 1;
        if(i > 1)
            error = abs(bound(i) - bound(i-1))/ abs(bound(i));
        end     
    end
    root = bound(i);
    iteration = count;
end