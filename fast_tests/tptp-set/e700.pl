use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET977+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 130
A neq {} & (cp({B},A) = {} or cp(A,{B}) = {})

,2000,_CONSTR,_RES).

get_time(Tend).

