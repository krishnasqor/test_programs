-module(quicksort).
-export([qs/1]).

qs([]) -> [];
qs([H|T]) ->
	qs([X || X <- T, X < H]) ++ [H] ++ qs([X || X <- T, X > H]).

