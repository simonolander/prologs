% Pack consecutive duplicates of list elements into sublists.
% If a list contains repeated elements they should be placed in separate sublists.
%
% Example:
% ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

pack([], []).
pack([X], [[X]]).
pack([X, Y | Tail], Output) :-
    dif(X, Y) -> pack([Y|Tail], O2), Output = [[X]|O2];
    pack([Y|Tail], [O|Os]), Output = [[X|O]|Os].
