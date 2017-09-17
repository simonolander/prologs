% Drop every N'th element from a list.
% Example:
% ?- drop([a,b,c,d,e,f,g,h,i,k],3,X).
% X = [a,b,d,e,g,h,k]

:- use_module(library(clpfd)).

drop([], _, []).
drop(_, 1, []).
drop(In, N, Out) :- drop(In, N, Out, N).

drop([], _, [], _).
drop([_|Xs], 1, Ys, N) :- drop(Xs, N, Ys, N).
drop([X|Xs], C, [X|Zs], N) :- C #> 0, C1 #= C - 1, drop(Xs, C1, Zs, N).
