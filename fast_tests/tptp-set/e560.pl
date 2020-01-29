use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET713+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The inverse of a one-to-one mapping is one-to-one
t1to1(F,A,B) & inv(F,M1) & (npfun(M1) or ndom(M1,B))

,2000,_CONSTR,_RES).

get_time(Tend).

