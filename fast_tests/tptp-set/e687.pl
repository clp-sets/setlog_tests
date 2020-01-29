use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET964+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 117
A neq {} & (subset(cp(B,A),cp(C,A)) or subset(cp(A,B),cp(A,C))) & nsubset(B,C)

,2000,_CONSTR,_RES).

get_time(Tend).

