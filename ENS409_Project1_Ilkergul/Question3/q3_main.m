clc;
clear;
%%%%% BRACKETING METHODS %%%%%
%% Bisection Method
fprintf("Welcome to the Bisection Method function\n");
lowerbound = input('Please enter the lower bound:');
upperbound = input('Please enter the upper bound:');
while(upperbound < lowerbound)
    fprintf("Upper bound is smaller than the lower bound\n");
    upperbound = input('Please enter the upper bound: ');
end
maxiter = input('Please enter the maximum iteration number:');
[root, error, Fzero, iterscore, itervalue, iterabserror] = q3_BisectionMethod(lowerbound, upperbound, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', Fzero);
fprintf('\n')
fprintf('The relative error with the root given by fzero function is %.12f', error);
fprintf('\n')

fprintf('The founded root at 10th iteration is %.12f with function value %.12f', itervalue(1), iterscore(1));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(1));
fprintf('\n')
fprintf('The founded root at 50th iteration is %.30f with function value %.22f', itervalue(2), iterscore(2));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(2));
fprintf('\n')
fprintf('The founded root at 100th iteration is %.30f with function value %.22f', itervalue(3), iterscore(3));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(3));
fprintf('\n')

%% False Position Method
fprintf("Welcome to the False Position Method function\n");
lowerbound = input('Please enter the lower bound:');
upperbound = input('Please enter the upper bound:');
while(upperbound < lowerbound)
    fprintf("Upper bound is smaller than the lower bound\n");
    upperbound = input('Please enter the upper bound: ');
end
maxiter = input('Please enter the maximum iteration number:');
[root, error, Fzero, iterscore, itervalue, iterabserror] = q3_FalsePositionMethod(lowerbound, upperbound, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', Fzero);
fprintf('\n')
fprintf('The relative error with the root given by fzero function is %.12f', error);
fprintf('\n')

fprintf('The founded root at 10th iteration is %.12f with function value %.12f', itervalue(1), iterscore(1));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(1));
fprintf('\n')
fprintf('The founded root at 50th iteration is %.30f with function value %.22f', itervalue(2), iterscore(2));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(2));
fprintf('\n')
fprintf('The founded root at 100th iteration is %.30f with function value %.22f', itervalue(3), iterscore(3));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(3));
fprintf('\n')

%% Modified False Position Method
fprintf("Welcome to the Modified False Position Method function\n");
lowerbound = input('Please enter the lower bound:');
upperbound = input('Please enter the upper bound:');
while(upperbound < lowerbound)
    fprintf("Upper bound is smaller than the lower bound\n");
    upperbound = input('Please enter the upper bound: ');
end
maxiter = input('Please enter the maximum iteration number:');
[root, error, Fzero, iterscore, itervalue, iterabserror] = q3_ModifiedFalsePositionMethod(lowerbound, upperbound, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', Fzero);
fprintf('\n')
fprintf('The relative error with the root given by fzero function is %.12f', error);
fprintf('\n')

fprintf('The founded root at 10th iteration is %.12f with function value %.12f', itervalue(1), itervalue(1));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(1));
fprintf('\n')
fprintf('The founded root at 50th iteration is %.36f with function value %.22f', itervalue(2), iterscore(2));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(2));
fprintf('\n')
fprintf('The founded root at 100th iteration is %.36f with function value %.22f', itervalue(3), iterscore(3));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(3));
fprintf('\n')

%%%%% BRACKETING METHODS %%%%%

%%%%% OPEN METHODS %%%%%
%% Newton Method
fprintf("Welcome to the Newton Method function\n");
p0 = input('Please enter the initial value:');
maxiter = input('Please enter the maximum iteration number:');

[root, error, Fzero, iterscore, itervalue, iterabserror] = q3_NewtonMethod(p0, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', Fzero);
fprintf('\n')
fprintf('The relative error with the root given by fzero function is %.12f', error);
fprintf('\n')

fprintf('The founded root at 10th iteration is %.12f with function value %.12f', itervalue(1), iterscore(1));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(1));
fprintf('\n')
fprintf('The founded root at 50th iteration is %.36f with function value %.22f', itervalue(2), iterscore(2));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(2));
fprintf('\n')
fprintf('The founded root at 100th iteration is %.36f with function value %.22f', itervalue(3), iterscore(3));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(3));
fprintf('\n')
%% Secant Method
fprintf("Welcome to the Secand Method function\n");
p0 = input('Please enter the p0:');
p1 = input('Please enter the p1:');
maxiter = input('Please enter the maximum iteration number:');
[root, error, Fzero, iterscore, itervalue, iterabserror] = q3_SecantMethod(p0, p1, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', Fzero);
fprintf('\n')
fprintf('The relative error with the root given by fzero function is %.12f', error);
fprintf('\n')

fprintf('The founded root at 10th iteration is %.12f with function value %.12f', itervalue(1), iterscore(1));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(1));
fprintf('\n')
fprintf('The founded root at 50th iteration is %.36f with function value %.22f', itervalue(2), iterscore(2));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(2));
fprintf('\n')
fprintf('The founded root at 100th iteration is %.36f with function value %.22f', itervalue(3), iterscore(3));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(3));
fprintf('\n')
%% Fixed Point Iteration
fprintf("Welcome to the Fixed Point Iteration function\n");
p0 = input('Please enter the initial value:');
maxiter = input('Please enter the maximum iteration number:');

[root, error, Fzero, iterscore, itervalue, iterabserror] = q3_FixedPointIteration(p0, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', Fzero);
fprintf('\n')
fprintf('The relative error with the root given by fzero function is %.12f', error);
fprintf('\n')

fprintf('The founded root at 10th iteration is %.12f with function value %.12f', itervalue(1), iterscore(1));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(1));
fprintf('\n')
fprintf('The founded root at 50th iteration is %.36f with function value %.22f', itervalue(2), iterscore(2));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(2));
fprintf('\n')
fprintf('The founded root at 100th iteration is %.36f with function value %.22f', itervalue(3), iterscore(3));
fprintf('\n')
fprintf('The absolute error is %.12f', iterabserror(3));
fprintf('\n')

%%%%% OPEN METHODS %%%%%