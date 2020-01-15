use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET701+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : Property of intersection and difference 3
subset(A,E) & subset(B,E) & nsubset(A,B) & diff(E,B,M1) & inters(A,M1,M2) & diff(E,C,M3) & inters(C,M3,M4) & subset(M2,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

