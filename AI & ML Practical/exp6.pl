% ==========================================
% EXPERIMENT 6
% TRAVEL ROUTE RECOMMENDATION SYSTEM
% ==========================================


% ------------------------------------------
% DIRECT CITY CONNECTIONS
% ------------------------------------------

connected(delhi, agra).
connected(agra, jaipur).
connected(jaipur, ahmedabad).
connected(ahmedabad, mumbai).

connected(delhi, chandigarh).
connected(chandigarh, amritsar).
connected(amritsar, jammu).

connected(delhi, lucknow).
connected(lucknow, varanasi).
connected(varanasi, patna).
connected(patna, kolkata).


% ------------------------------------------
% BIDIRECTIONAL CONNECTION
% ------------------------------------------

road(A, B) :-
    connected(A, B).

road(A, B) :-
    connected(B, A).


% ------------------------------------------
% DIRECT ROUTE
% ------------------------------------------

direct_route(A, B) :-
    road(A, B).


% ------------------------------------------
% ROUTE USING RECURSION
% ------------------------------------------

route(A, B, Path) :-
    travel(A, B, [A], RevPath),
    reverse(RevPath, Path).


% Base Case

travel(B, B, Visited, Visited).


% Recursive Case

travel(Current, Destination, Visited, Path) :-
    road(Current, Next),
    \+ member(Next, Visited),
    travel(Next, Destination, [Next|Visited], Path).


% ------------------------------------------
% RECOMMENDATION
% ------------------------------------------

recommend_route(Source, Destination, Path) :-
    route(Source, Destination, Path).