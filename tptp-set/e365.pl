use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET469-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Sets with at most one member 3
M1 in X & {M1} = X & id(U,M2) & nsubset(cp(X,X),M2) & M1 in U

,2000,_CONSTR,_RES).

get_time(Tend).

