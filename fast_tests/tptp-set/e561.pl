use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET714+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The composition of inverse(F) and F is the identity
t1to1(F,A,B) & id(A,M1) & inv(F,M2) & ncomp(F,M2,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

