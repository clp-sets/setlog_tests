use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO042-1 : TPTP v7.0.0. Released v2.5.0.
% Problem  : Single axiom C3 for Boolean algebra in the Sheffer stroke (nandb)
nandb(A,B,M1) & nandb(A,M1,M2) & nandb(A,M2,M3) & nandb(C,A,M4) & nandb(B,M4,M5) & nandb(M3,M5,M6) & M6 neq B & bool(B)

,2000,_CONSTR,_RES).

get_time(Tend).

