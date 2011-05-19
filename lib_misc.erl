-module(lib_misc).
-export([sum/1,for/3,qsort/1]).

sum(L) -> sum(L, 0).
sum([H|T], N) -> sum(T, N+H);
sum([], N) -> N.

for(Max, Max, F) -> [F(Max)];
for(I, Max, F)   -> [F(I)|for(I+1, Max, F)].

qsort([]) -> [];
qsort([Pivot|T]) ->
    qsort([X || X <- T, X < Pivot])
    ++ [Pivot] ++
    qsort([X || X <- T, X >= Pivot]).
 
