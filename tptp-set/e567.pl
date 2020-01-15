use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET720+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The inverse of the inverse of a mapping is equal to the mapping
t1to1(F,A,B) & inv(F,M1) & ninv(M1,F)

,2000,_CONSTR,_RES).

get_time(Tend).

