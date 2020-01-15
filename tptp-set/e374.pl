use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET478-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Axiom of subsets 2
set(Y) & inters(X,Y,M1) & nset(M1)

,2000,_CONSTR,_RES).

get_time(Tend).

