% Flatten a nested list structure.
% Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
%
% Example:
% ?- my_flatten([a, [b, [c, d], e]], X).
% X = [a, b, c, d, e]
%
% Hint: Use the predefined predicates is_list/1 and append/3

my_flatten([], []).
my_flatten([X|Xs], Output) :-
    (
        is_list(X) -> my_flatten(X, L1), my_flatten(Xs, L2), append(L1, L2, Output)
    ;   my_flatten(Xs, L2), Output = [X|L2]
    ).
