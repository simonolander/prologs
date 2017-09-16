% Find the number of elements of a list.

len(0, []).
len(X, [_Head|Tail]) :- len(X1, Tail), X is X1 + 1.
