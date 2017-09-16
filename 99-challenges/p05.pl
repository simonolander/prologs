% Reverse a list.

reverse([], []).
reverse(X, [Y|Ys]) :- reverse(X1, Ys), append(X1, [Y], X).
