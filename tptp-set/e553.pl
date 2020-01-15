use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET706+4 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : Property of difference
subset(C,B) & subset(B,A) & diff(A,C,M1) & diff(B,C,M2) & diff(A,B,M3) & nun(M2,M3,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

