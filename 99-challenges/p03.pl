% Find the K'th element of a list.
% The first element in the list is number 1.
% Example:
% ?- element_at(X,[a,b,c,d,e],3).
% X = c

element_at(X, [X|_Tail], 0).
element_at(X, [_Head|Tail], N) :- N1 is N - 1, element_at(X, Tail, N1).

