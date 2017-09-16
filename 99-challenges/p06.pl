% Find out whether a list is a palindrome.
% A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

% Incluce p05.pl: reverse
:- [p05].

palindrome(X) :- reverse(X, X).
