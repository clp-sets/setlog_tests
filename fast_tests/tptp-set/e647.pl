use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET907+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ( in(A,B) & in(C,B) ) => set_union2(unordered_pair(A,C),B) = B
A in B & C in B & nun({A,C},B,B)

,2000,_CONSTR,_RES).

get_time(Tend).

