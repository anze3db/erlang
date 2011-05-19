-module(division).
-export([d/2]).

prev(0) -> 0;
prev(X) -> X - 1.

next(X) -> X + 1.

sub(X,Y) when X < Y -> 0;
sub(X,Y) -> X - Y.

division(_,0) -> 0;
division(Y,X) -> 
	X1 = X - 1,
	case (sub(next(X1), Y*division(Y,X1))) > 0 of
	   true ->         
		next(division(Y,X1));
	   false ->
		division(Y,X1)
	end.
	   
d(X,Y) -> prev(division(Y, next(X))).
