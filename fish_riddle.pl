% A Prolog solution to the fish riddle
% https://www.youtube.com/watch?v=lLOALyWls2k&t=3s

:- use_module(library(clpfd)).

% How many sharks are there in sector A, B, and C
sharks(2, 4, SC) :- between(1, 7, SC), \+ SC is 2, \+ SC is 4.

% How many tanks are there in sector A, B, and C
tanks(4, 2, TC) :- between(0, 7, TC).

main(Creatures, Result) :-
    sharks(SA, SB, SC),
    tanks(TA, TB, TC),
    SA + SB + SC + _FPT * (TA + TB + TC) #= Creatures,
    Result is TA + TB + TC.
