% Define facts.
batsman(sachin).
cricketer(batsman).

%rules
cricketer(X):- batsman(X).
