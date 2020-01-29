use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET623+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : (X sym\ Y) sym\ Z = X sym\ (Y sym\ Z)
symdiff(B,C,M1) & symdiff(M1,D,M2) & symdiff(C,D,M3) & symdiff(B,M3,M4) & M2 neq M4

,2000,_CONSTR,_RES).

get_time(Tend).

