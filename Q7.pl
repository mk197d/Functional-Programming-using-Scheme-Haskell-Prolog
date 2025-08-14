type(X, W) :-
    assign(X, Y),
    not(number(Y)),
    not(assign(X, false)),
    not(assign(X, true)),
    type(Y, W),
    !.

type(X, W) :-
    assign(X, Y),
    not(number(Y)),
    assign(X, true),
    type(Y, int),
    W = any,
    !.

type(X, W) :-
    assign(X, Y),
    not(number(Y)),
    assign(X, false),
    type(Y, int),
    W = any,
    !.

type(X, W) :-
    assign(X, Y),
    number(Y),
    assign(X, true),
    W = any, 
    !.

type(X, W) :-
    assign(X, Y),
    number(Y),
    assign(X, false),
    W = any,
    !.

type(X, W) :-
    assign(X, Y),
    not(number(Y)),
    assign(X, true),
    W = bool,
    !.

type(X, W) :-
    assign(X, Y),
    not(number(Y)),
    assign(X, false),
    W = bool,
    !.

type(X, W) :-
    assign(X, Y),
    number(Y),
    not(assign(X, true)),
    not(assign(X, false)),
    W = int,
    !.
