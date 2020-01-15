use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET767+4 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Equivalence classes on E are power_set E
equivalence(R,E) & delay(eclass(R,E,A,M1),false) & nsubset(M1,E)

,2000,_CONSTR,_RES).

get_time(Tend).

