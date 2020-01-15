use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET719+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Inverse of composition
t1to1(F,A,B) & t1to1(G,B,C) & comp(F,G,M1) & inv(M1,M2) & inv(F,M3) & inv(G,M4) & ncomp(M4,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

