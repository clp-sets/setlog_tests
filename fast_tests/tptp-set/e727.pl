use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET666+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : The identity relation on X is a relation from X to X
id(B,M1) & nsubset(M1,cp(B,B))

,2000,_CONSTR,_RES).

get_time(Tend).

