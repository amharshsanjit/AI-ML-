% ==========================================
% EXPERIMENT 1
% Student-Course Knowledge Base
% ==========================================

% ----- Student Facts -----

student(rahul).
student(amit).
student(priya).
student(neha).
student(rohit).

% ----- Course Facts -----

course(prolog).
course(java).
course(python).
course(ai).
course(database).

% ----- Enrollment Facts -----

enrolled(rahul, prolog).
enrolled(rahul, ai).

enrolled(amit, java).
enrolled(amit, python).

enrolled(priya, python).
enrolled(priya, database).

enrolled(neha, ai).
enrolled(neha, prolog).

enrolled(rohit, java).
enrolled(rohit, database).


% ----- Rules -----

% A student is taking a course
takes(Student, Course) :-
    enrolled(Student, Course).

% Find students enrolled in a particular course
student_in_course(Student, Course) :-
    enrolled(Student, Course).

% Find all courses taken by a student
course_of_student(Student, Course) :-
    enrolled(Student, Course).