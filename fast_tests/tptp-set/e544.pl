use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET698+4 : TPTP v7.0.0. Released v2.2.0. (1)
% Problem  : Property of union and difference
subset(A,E) & subset(B,E) & subset(A,B) & diff(E,A,M1) & nun(M1,B,E)

,2000,_CONSTR,_RES).

get_time(Tend).

