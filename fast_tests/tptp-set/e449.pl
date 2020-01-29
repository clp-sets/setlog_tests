use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET527-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Ordered pair components are sets 2
first(X,M1) & second(X,M2) & {M1,{M1,M2}} = X & nset(M2)

,2000,_CONSTR,_RES).

get_time(Tend).

