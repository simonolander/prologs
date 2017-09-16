% Find the number of elements of a list.

len([], 0).
len([_Head|Tail], Output) :- len(Tail, O2), Output is O2 + 1.
