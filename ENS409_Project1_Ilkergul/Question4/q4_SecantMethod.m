function [root, iteration, score] = q4_SecantMethod(initial, second, maxiter, tol)
    tolerance = 0.05*10^-tol; % given tolerance
    myfunc = @(x)2*x^2 -x^3 + sin(x); %first function
    bound = [initial second]; % boundaries
    count = 0; 
    score = fzero(myfunc, [-1 -0.2]);
    error = 1000;
    i = 2;
    while(error > tolerance && count < maxiter)
        i = i +1;
        bound(i) = bound(i-1) + (myfunc(bound(i-1))*(bound(i-2)-bound(i-1)))/ (myfunc(bound(i-1))- myfunc(bound(i-2)));
        count = count + 1;
        if(i > 2)
            error = abs(bound(i) - bound(i-1))/ abs(bound(i));
        end  
        
    end
    root = bound(i);
    iteration = count;
end