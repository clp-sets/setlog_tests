use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET058-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Expanded equality definition
M1 in Y & M1 nin X & M1 nin X & X = Y & M2 in X & M2 nin Y & M2 in X

,2000,_CONSTR,_RES).

get_time(Tend).

