%define facts
female(elizabeth).
female(sophia).
female(catherine).

male(jamesI).
male(charlesI).
male(charlesII).
male(jamesII).
male(george).

parent(jamesI,charlesI).
parent(jamesI,elizabeth).
parent(charlesI,catherine).
parent(charlesI,charlesII).
parent(charlesI,jamesII).
parent(elizabeth,sophia).
parent(sophia,george).

%define rules
mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), X\==Y.
granparent(X,Z):- parent(X,Y),parent(Y,Z).
