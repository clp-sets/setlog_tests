use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET986+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : in(A,B) => union(difference(B,singleton(A)),singleton(A)) = B
A in B & diff(B,{A},M1) & nun(M1,{A},B)

,2000,_CONSTR,_RES).

get_time(Tend).

