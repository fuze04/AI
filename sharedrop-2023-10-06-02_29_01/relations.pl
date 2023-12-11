%define facts
female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

%define rules
mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), X\==Y.
aunt(X,Y):-sister(X,Z),parent(Z,Y),X\==Y.
grandfather(X,Y):-parent(Z,Y),father(X,Z),X\==Y.
grandmother(X,Y):-parent(Z,Y),mother(X,Z),X\==Y.




