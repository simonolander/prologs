
at_most_one_queen([_]).

at_most_one_queen([1, 0]).
at_most_one_queen([0, 1]).
at_most_one_queen([0, 0]).

at_most_one_queen([1, 0, 0]).
at_most_one_queen([0, 1, 0]).
at_most_one_queen([0, 0, 1]).
at_most_one_queen([0, 0, 0]).

at_most_one_queen([1, 0, 0, 0]).
at_most_one_queen([0, 1, 0, 0]).
at_most_one_queen([0, 0, 1, 0]).
at_most_one_queen([0, 0, 0, 1]).
at_most_one_queen([0, 0, 0, 0]).

at_most_one_queen([1, 0, 0, 0, 0]).
at_most_one_queen([0, 1, 0, 0, 0]).
at_most_one_queen([0, 0, 1, 0, 0]).
at_most_one_queen([0, 0, 0, 1, 0]).
at_most_one_queen([0, 0, 0, 0, 1]).
at_most_one_queen([0, 0, 0, 0, 0]).

at_most_one_queen([1, 0, 0, 0, 0, 0]).
at_most_one_queen([0, 1, 0, 0, 0, 0]).
at_most_one_queen([0, 0, 1, 0, 0, 0]).
at_most_one_queen([0, 0, 0, 1, 0, 0]).
at_most_one_queen([0, 0, 0, 0, 1, 0]).
at_most_one_queen([0, 0, 0, 0, 0, 1]).
at_most_one_queen([0, 0, 0, 0, 0, 0]).

at_most_one_queen([1, 0, 0, 0, 0, 0, 0]).
at_most_one_queen([0, 1, 0, 0, 0, 0, 0]).
at_most_one_queen([0, 0, 1, 0, 0, 0, 0]).
at_most_one_queen([0, 0, 0, 1, 0, 0, 0]).
at_most_one_queen([0, 0, 0, 0, 1, 0, 0]).
at_most_one_queen([0, 0, 0, 0, 0, 1, 0]).
at_most_one_queen([0, 0, 0, 0, 0, 0, 1]).
at_most_one_queen([0, 0, 0, 0, 0, 0, 0]).

at_most_one_queen([1, 0, 0, 0, 0, 0, 0, 0]).
at_most_one_queen([0, 1, 0, 0, 0, 0, 0, 0]).
at_most_one_queen([0, 0, 1, 0, 0, 0, 0, 0]).
at_most_one_queen([0, 0, 0, 1, 0, 0, 0, 0]).
at_most_one_queen([0, 0, 0, 0, 1, 0, 0, 0]).
at_most_one_queen([0, 0, 0, 0, 0, 1, 0, 0]).
at_most_one_queen([0, 0, 0, 0, 0, 0, 1, 0]).
at_most_one_queen([0, 0, 0, 0, 0, 0, 0, 1]).
at_most_one_queen([0, 0, 0, 0, 0, 0, 0, 0]).


queens([
    A0, A1, A2, A3, A4, A5, A6, A7,
    B0, B1, B2, B3, B4, B5, B6, B7,
    C0, C1, C2, C3, C4, C5, C6, C7,
    D0, D1, D2, D3, D4, D5, D6, D7,
    E0, E1, E2, E3, E4, E5, E6, E7,
    F0, F1, F2, F3, F4, F5, F6, F7,
    G0, G1, G2, G3, G4, G5, G6, G7,
    H0, H1, H2, H3, H4, H5, H6, H7
]) :-
    % rows
    at_most_one_queen([A0, A1, A2, A3, A4, A5, A6, A7]),
    at_most_one_queen([B0, B1, B2, B3, B4, B5, B6, B7]),
    at_most_one_queen([C0, C1, C2, C3, C4, C5, C6, C7]),
    at_most_one_queen([D0, D1, D2, D3, D4, D5, D6, D7]),
    at_most_one_queen([E0, E1, E2, E3, E4, E5, E6, E7]),
    at_most_one_queen([F0, F1, F2, F3, F4, F5, F6, F7]),
    at_most_one_queen([G0, G1, G2, G3, G4, G5, G6, G7]),
    at_most_one_queen([H0, H1, H2, H3, H4, H5, H6, H7]),
    % columns
    at_most_one_queen([A0, B0, C0, D0, E0, F0, G0, H0]),
    at_most_one_queen([A1, B1, C1, D1, E1, F1, G1, H1]),
    at_most_one_queen([A2, B2, C2, D2, E2, F2, G2, H2]),
    at_most_one_queen([A3, B3, C3, D3, E3, F3, G3, H3]),
    at_most_one_queen([A4, B4, C4, D4, E4, F4, G4, H4]),
    at_most_one_queen([A5, B5, C5, D5, E5, F5, G5, H5]),
    at_most_one_queen([A6, B6, C6, D6, E6, F6, G6, H6]),
    at_most_one_queen([A7, B7, C7, D7, E7, F7, G7, H7]),
    % diagonals down-right
    at_most_one_queen([A7]),
    at_most_one_queen([A6, B7]),
    at_most_one_queen([A5, B6, C7]),
    at_most_one_queen([A4, B5, C6, D7]),
    at_most_one_queen([A3, B4, C5, D6, E7]),
    at_most_one_queen([A2, B3, C4, D5, E6, F7]),
    at_most_one_queen([A1, B2, C3, D4, E5, F6, G7]),
    at_most_one_queen([A0, B1, C2, D3, E4, F5, G6, H7]),
    at_most_one_queen([B0, C1, D2, E3, F4, G5, H6]),
    at_most_one_queen([C0, D1, E2, F3, G4, H5]),
    at_most_one_queen([D0, E1, F2, G3, H4]),
    at_most_one_queen([E0, F1, G2, H3]),
    at_most_one_queen([F0, G1, H2]),
    at_most_one_queen([G0, H1]),
    at_most_one_queen([H0]),
    % diagonal up-right
    at_most_one_queen([A0]),
    at_most_one_queen([A1, B0]),
    at_most_one_queen([A2, B1, C0]),
    at_most_one_queen([A3, B2, C1, D0]),
    at_most_one_queen([A4, B3, C2, D1, E0]),
    at_most_one_queen([A5, B4, C3, D2, E1, F0]),
    at_most_one_queen([A6, B5, C4, D3, E2, F1, G0]),
    at_most_one_queen([A7, B6, C5, D4, E3, F2, G1, H0]),
    at_most_one_queen([B7, C6, D5, E4, F3, G2, H1]),
    at_most_one_queen([C7, D6, E5, F4, G3, H2]),
    at_most_one_queen([D7, E6, F5, G4, H3]),
    at_most_one_queen([E7, F6, G5, H4]),
    at_most_one_queen([F7, G6, H5]),
    at_most_one_queen([G7, H6]),
    at_most_one_queen([H7]).

print_queen(0) :- writef('.').
print_queen(1) :- writef('M').

print_row(A0, A1, A2, A3, A4, A5, A6, A7) :-
    print_queen(A0), writef(' '),
    print_queen(A1), writef(' '),
    print_queen(A2), writef(' '),
    print_queen(A3), writef(' '),
    print_queen(A4), writef(' '),
    print_queen(A5), writef(' '),
    print_queen(A6), writef(' '),
    print_queen(A7), writeln('').

print_board([
    A0, A1, A2, A3, A4, A5, A6, A7,
    B0, B1, B2, B3, B4, B5, B6, B7,
    C0, C1, C2, C3, C4, C5, C6, C7,
    D0, D1, D2, D3, D4, D5, D6, D7,
    E0, E1, E2, E3, E4, E5, E6, E7,
    F0, F1, F2, F3, F4, F5, F6, F7,
    G0, G1, G2, G3, G4, G5, G6, G7,
    H0, H1, H2, H3, H4, H5, H6, H7
]) :-
    print_row(A0, A1, A2, A3, A4, A5, A6, A7),
    print_row(B0, B1, B2, B3, B4, B5, B6, B7),
    print_row(C0, C1, C2, C3, C4, C5, C6, C7),
    print_row(D0, D1, D2, D3, D4, D5, D6, D7),
    print_row(E0, E1, E2, E3, E4, E5, E6, E7),
    print_row(F0, F1, F2, F3, F4, F5, F6, F7),
    print_row(G0, G1, G2, G3, G4, G5, G6, G7),
    print_row(H0, H1, H2, H3, H4, H5, H6, H7).

number_of_queens([], 0).
number_of_queens([0|Tail], X) :- number_of_queens(Tail, X).
number_of_queens([1|Tail], X) :- X > 0, X1 is X - 1, number_of_queens(Tail, X1).

main(Queens, Board) :- queens(Board), number_of_queens(Board, Queens), print_board(Board).

