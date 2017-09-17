% Duplicate the elements of a list a given number of times.
% Example:
% ?- dupli(3, [a,b,c],X).
% X = [a,a,a,b,b,b,c,c,c]
%
% What are the results of the goal:
% ?- dupli(X,3,Y).

:- use_module(library(clpfd)).

dupli(0, _, []).
dupli(N, L, Output) :- N #> 0, dupli(N, N, L, Output).

dupli(_, _, [], []).
dupli(0, N, [_|Xs], Ys) :- dupli(N, N, Xs, Ys).
dupli(K, N, [X|Xs], [X|Ys]) :-
    K #> 0,
    K1 #= K - 1,
    dupli(K1, N, [X|Xs], Ys).

