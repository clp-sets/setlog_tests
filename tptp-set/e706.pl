use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET984+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 138
subset(cp(A,B),cp(C,D)) & cp(A,B) neq {} & (nsubset(A,C) or nsubset(B,D))

,2000,_CONSTR,_RES).

get_time(Tend).

