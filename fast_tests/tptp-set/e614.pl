use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET770+4 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Two equivalence classes are equal or disjoint
equivalence(R,E) & E = {A,B/E1} & A nin E1 & B nin E1 & A neq B & eclass(R,E,A,M1) & eclass(R,E,B,M2) & M1 neq M2 & ndisj(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

