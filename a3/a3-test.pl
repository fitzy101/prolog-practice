%q1
% declarations
male(steve).
male(michael).
male(john).
male(jarrod).
male(bradley).

female(glenda).
female(bek).
female(emma).
female(lisa).
female(kay).
female(irene).
female(estelle).
female(alice).
female(poppy).
female(alise).

parent(steve, michael).
parent(steve, emma).
parent(steve, bek).
parent(glenda, michael).
parent(glenda, emma).
parent(glenda, bek).
parent(kay, lisa).
parent(irene, kay).
parent(irene, john).
parent(irene, glenda).
parent(emma, estelle).
parent(emma, poppy).
parent(emma, alice).
parent(lisa, alise).
parent(lisa, jarrod).
parent(lisa, bradley).

% General rules.
child(A, B) :- parent(B, A).
sibling(A, B) :- child(A, X), child(B, X), \+(A = B).

% Generic cousin rule.
cousin(1, X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).
cousin(N, X, Y) :- Level is N-1, parent(A, X), parent(B, Y), cousin(Level, A, B).

% Non-generic cousin rules.
cousin1(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B), \+(sibling(X, Y)).
cousin2(X, Y) :- parent(A, X), parent(B, Y), cousin1(A, B), \+(sibling(X, Y)).


%q2


