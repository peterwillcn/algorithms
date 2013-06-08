-module(insertion_sort).
-export([sort/1]).

sort([]) ->
  [];

sort(L) ->
  tail_sort(L, []).

tail_sort([], L) ->
  L;

tail_sort([H|T], L) ->
  tail_sort(T, insert_to(H, L)).

insert_to(H, L) ->
  tail_insert_to(H, L, [], []).

tail_insert_to(H, [], Left, Right) ->
  lists:reverse(Left) ++ [H] ++ lists:reverse(Right);

tail_insert_to(H, [H1|T], Left, Right) when H >= H1 ->
  tail_insert_to(H, T, [H1|Left], Right);

tail_insert_to(H, [H1|T], Left, Right) when H < H1 ->
  tail_insert_to(H, T, Left, [H1|Right]).

