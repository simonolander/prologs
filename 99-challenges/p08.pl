% Eliminate consecutive duplicates of list elements.
% If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
%
% Example:
% ?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [a,b,c,a,d,e]

compress([], []).
compress([X], [X]).
compress([X, X | Tail], Output) :- compress([X|Tail], Output).
compress([X, Y | Tail], Output) :- dif(X, Y), compress([Y|Tail], O2), Output = [X|O2].
