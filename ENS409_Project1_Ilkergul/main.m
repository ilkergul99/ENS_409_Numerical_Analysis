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
tol = input('Please enter the tolerance 1.0 x e-n:');
[root, error, iteration] = BisectionMethod(lowerbound, upperbound, maxiter, tol);
fprintf('The root is %.8f', root);
fprintf('\n')
fprintf('The absolute approximate error is %.6f', error);
fprintf('\n')
fprintf('The iteration number is %d', iteration);
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
tol = input('Please enter the tolerance 1.0 x e-n:');
[root, error, iteration] = FalsePositionMethod(lowerbound, upperbound, maxiter, tol);
fprintf('The root is %.8f', root);
fprintf('\n')
fprintf('The absolute approximate error is %.8f', error);
fprintf('\n')
fprintf('The iteration number is %d', iteration);
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
tol = input('Please enter the tolerance 1.0 x e-n:');
[root, error, iteration] = ModifiedFalsePositionMethod(lowerbound, upperbound, maxiter, tol);
fprintf('The root is %.8f', root);
fprintf('\n')
fprintf('The absolute approximate error is %.12f', error);
fprintf('\n')
fprintf('The iteration number is %d', iteration);
fprintf('\n')
%%%%% BRACKETING METHODS %%%%%

%%%%% OPEN METHODS %%%%%
%% Newton Method
fprintf("Welcome to the Newton Method function\n");
p0 = input('Please enter the initial value:');

maxiter = input('Please enter the maximum iteration number:');
tol = input('Please enter the tolerance 1.0 x e-n:');

[root, error, iteration] = NewtonMethod(p0, maxiter, tol);
fprintf('The root is %.8f', root);
fprintf('\n')
fprintf('The absolute approximate error is %.8f', error);
fprintf('\n')
fprintf('The iteration number is %d', iteration);
fprintf('\n')
%% Secant Method
fprintf("Welcome to the Secand Method function\n");
p0 = input('Please enter the p0:');
p1 = input('Please enter the p1:');
maxiter = input('Please enter the maximum iteration number:');
tol = input('Please enter the tolerance 1.0 x e-n:');
[root, error, iteration] = SecantMethod(p0, p1, maxiter, tol);
fprintf('The root is %.8f', root);
fprintf('\n')
fprintf('The absolute approximate error is %.8f', error);
fprintf('\n')
fprintf('The iteration number is %d', iteration);
fprintf('\n')
%% Fixed Point Iteration
fprintf("Welcome to the Fixed Point Iteration function\n");
p0 = input('Please enter the initial value:');
maxiter = input('Please enter the maximum iteration number:');
tol = input('Please enter the tolerance 1.0 x e-n:');
[root, error, iteration] = FixedPointIteration(p0, maxiter, tol);
fprintf('The root is %.8f', root);
fprintf('\n')
fprintf('The absolute approximate error is %.8f', error);
fprintf('\n')
fprintf('The iteration number is %d', iteration);
fprintf('\n')

%%%%% OPEN METHODS %%%%%