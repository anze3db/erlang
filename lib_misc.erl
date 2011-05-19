-module(lib_misc).
-export([sum/1]).
-export([for/3]).

sum(L) -> sum(L, 0).

sum([H|T], N) -> sum(T, N+H);
sum([], N) -> N.

% EXAMPLE: lib_misc:for(0,10,fun(I) -> I*I end). 

for(Max, Max, F) -> [F(Max)];
for(I, Max, F)   -> [F(I)|for(I+1, Max, F)].

 
