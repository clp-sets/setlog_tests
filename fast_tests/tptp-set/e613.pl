use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET769+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : Equality of equivalence classes 2
subset(R,cp(E,E)) & comp(R,R,M1) & subset(M1,R) & id(E,M2) & subset(M2,R) & inv(R,R) & E = {A,B/E1} & A nin E1 & B nin E1 & eclass(R,E,A,M5) & eclass(R,E,B,M6) & ndisj(M5,M6) & M5 neq M6
,2000,_CONSTR,_RES).

get_time(Tend).

