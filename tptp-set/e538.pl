use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET693+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : Property of union
nun(A,B,A) & subset(B,A)

,2000,_CONSTR,_RES).

get_time(Tend).

