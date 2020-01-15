use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET695+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : Difference of subsets
subset(A,E) & subset(B,E) & nsubset(A,B) & diff(E,B,M1) & diff(E,A,M2) & subset(M1,M2)


,2000,_CONSTR,_RES).

get_time(Tend).

