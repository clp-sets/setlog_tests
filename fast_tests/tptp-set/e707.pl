use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET985+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 139
A neq {} & (subset(cp(A,B),cp(C,D)) or subset(cp(B,A),cp(D,C))) & nsubset(B,D)

,2000,_CONSTR,_RES).

get_time(Tend).

