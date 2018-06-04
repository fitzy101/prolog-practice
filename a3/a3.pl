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

% rules.
sibling(A, B) :- child(A, X), child(B, X).
cousin(1, X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).
cousin(N, X, Y) :- parent(A, X), parent(B, Y), cousin(N-1, A, B).

%cousin1(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B), \+(sibling(X, Y)).
%cousin2(X, Y) :- parent(A, X), parent(B, Y), cousin1(A, B), \+(sibling(X, Y)).

