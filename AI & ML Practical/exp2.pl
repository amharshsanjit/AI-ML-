% ==========================================
% EXPERIMENT 2
% Arithmetic, Factorial and Fibonacci
% ==========================================

% ----- Addition -----

addition(A, B, Result) :-
    Result is A + B.


% ----- Subtraction -----

subtraction(A, B, Result) :-
    Result is A - B.


% ----- Multiplication -----

multiplication(A, B, Result) :-
    Result is A * B.


% ----- Division -----

division(A, B, Result) :-
    B =\= 0,
    Result is A / B.


% ----- Factorial -----

factorial(0, 1).

factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, R),
    Result is N * R.


% ----- Fibonacci -----

fibonacci(0, 0).

fibonacci(1, 1).

fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1 + R2.


% ----- Generate Fibonacci Series -----

fib_series(N, List) :-
    fib_series(0, N, List).

fib_series(Current, N, []) :-
    Current >= N.

fib_series(Current, N, [F|Rest]) :-
    Current < N,
    fibonacci(Current, F),
    Next is Current + 1,
    fib_series(Next, N, Rest).