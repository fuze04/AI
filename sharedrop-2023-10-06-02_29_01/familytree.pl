%define Facts
female(pauline).
female(cathy).
female(lucy).

male(lou).
male(pete).
male(ian).
male(peter).

parent(lou,pauline).
parent(lou,pete).
parent(pete,ian).
parent(cathy,ian).
parent(ian,lucy).
parent(ian,peter).

% define rules
% mother relation
mother(X,Y):- parent(X,Y),female(X).

