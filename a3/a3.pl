
%%%% Question 1. %%%%
% General rules.
child(A, B) :- parent(B, A).
sibling(A, B) :- child(A, X), child(B, X), \+(A = B).

% Generic cousin rule.
cousin(1, X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).
cousin(N, X, Y) :- Level is N-1, parent(A, X), parent(B, Y), cousin(Level, A, B).

% Non-generic cousin rules.
cousin1(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B), \+(sibling(X, Y)).
cousin2(X, Y) :- parent(A, X), parent(B, Y), cousin1(A, B), \+(sibling(X, Y)).

%%%% Question 2. %%%%
single(L1, L2) :- sort(L1, L2).

%%%% Question 3. %%%%
alt([], []).
alt([X], [X]).
alt([X,_|Xs], [X|Ys]) :- alt(Xs, Ys).

%%%% Question 4. %%%%

