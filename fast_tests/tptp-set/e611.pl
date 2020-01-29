use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET768+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : Equality of equivalence classes 1
equivalence(R,E) & E = {A,B/E1} & A nin E1 & B nin E1 & eclass(R,E,A,M1) & eclass(R,E,B,M2) & [A,B] in R & M1 neq M2

,2000,_CONSTR,_RES).

get_time(Tend).

