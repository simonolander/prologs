% Run-length encoding of a list.
% Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.
%
% Example:
% ?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4,a],[1,b],[2,c],[2,a],[1,d][4,e]]

:- [p04, p09].

encode_([], []).
encode_([[X|Xs]|Tail], Output) :- encode_(Tail, O2), len([X|Xs], Len), Output = [[Len, X]|O2].

encode([], []).
encode(X, Output) :- pack(X, Packed), encode_(Packed, Output).
