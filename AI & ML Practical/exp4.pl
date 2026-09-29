% ==========================================
% EXPERIMENT 4
% College Timetable Knowledge Base
% ==========================================


% ------------------------------------------
% FACULTY
% ------------------------------------------

faculty(dr_sharma).
faculty(dr_verma).
faculty(prof_singh).
faculty(prof_mehta).
faculty(dr_gupta).


% ------------------------------------------
% SUBJECTS
% ------------------------------------------

subject(data_structures).
subject(java).
subject(python).
subject(artificial_intelligence).
subject(computer_networks).


% ------------------------------------------
% CLASSROOMS
% ------------------------------------------

classroom(room101).
classroom(room102).
classroom(room103).
classroom(room104).
classroom(room105).


% ------------------------------------------
% TIMETABLE
% timetable(Day, Time, Subject, Faculty, Room)
% ------------------------------------------

timetable(monday, 9, data_structures, dr_sharma, room101).
timetable(monday, 11, java, dr_verma, room102).

timetable(tuesday, 9, python, prof_singh, room103).
timetable(tuesday, 11, artificial_intelligence, prof_mehta, room104).

timetable(wednesday, 9, computer_networks, dr_gupta, room105).
timetable(wednesday, 11, data_structures, dr_sharma, room101).

timetable(thursday, 9, java, dr_verma, room102).
timetable(thursday, 11, python, prof_singh, room103).

timetable(friday, 9, artificial_intelligence, prof_mehta, room104).
timetable(friday, 11, computer_networks, dr_gupta, room105).


% ------------------------------------------
% RULES
% ------------------------------------------

% Find subject at a particular time
subject_at(Day, Time, Subject) :-
    timetable(Day, Time, Subject, _, _).


% Find faculty teaching a subject
faculty_for(Subject, Faculty) :-
    timetable(_, _, Subject, Faculty, _).


% Find classroom for a subject
room_for(Subject, Room) :-
    timetable(_, _, Subject, _, Room).


% Find complete timetable information
class_info(Day, Time, Subject, Faculty, Room) :-
    timetable(Day, Time, Subject, Faculty, Room).