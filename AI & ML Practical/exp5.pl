% ==========================================
% EXPERIMENT 5
% Student Performance Analysis
% ==========================================


% ------------------------------------------
% STUDENT MARKS
% ------------------------------------------

marks(rahul, 92).
marks(amit, 78).
marks(priya, 65).
marks(neha, 55).
marks(rohit, 38).
marks(ankit, 28).
marks(sneha, 88).
marks(vikas, 72).


% ------------------------------------------
% PERFORMANCE RULES
% ------------------------------------------

% Topper: marks >= 85

performance(Student, topper) :-
    marks(Student, Marks),
    Marks >= 85.


% Average: marks between 50 and 84

performance(Student, average) :-
    marks(Student, Marks),
    Marks >= 50,
    Marks < 85.


% Failed: marks below 50

performance(Student, failed) :-
    marks(Student, Marks),
    Marks < 50.


% ------------------------------------------
% DIRECT CLASSIFICATION RULES
% ------------------------------------------

topper(Student) :-
    marks(Student, Marks),
    Marks >= 85.


average_student(Student) :-
    marks(Student, Marks),
    Marks >= 50,
    Marks < 85.


failed_student(Student) :-
    marks(Student, Marks),
    Marks < 50.