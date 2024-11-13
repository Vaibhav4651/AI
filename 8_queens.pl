eight_queens(Board) :- length(Board, 8), place_queens(Board), safe(Board).
place_queens([]).
place_queens([Column | Columns]) :-
 place_queens(Columns),
 between(1, 8, Column),
 \+ member(Column, Columns).
safe([]).
safe([Q | Queens]) :-
 safe_from(Q, Queens, 1),
 safe(Queens).
safe_from(_, [], _).
safe_from(Q, [Q1 | Queens], D) :-
 Q =\= Q1,
 abs(Q - Q1) =\= D,
 D1 is D + 1,
 safe_from(Q, Queens, D1). 

 
