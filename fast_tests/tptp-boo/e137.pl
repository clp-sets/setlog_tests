use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO066-1 : TPTP v7.0.0. Released v2.5.0.
% Problem  : Single non-axiom M8A for Boolean algebra in the Sheffer stroke (nandb)
nandb(B,C,M1) & nandb(A,M1,M2) & nandb(M2,A,M3) & nandb(B,A,M4) & 
nandb(C,M4,M5) & nandb(M3,M5,M6) & M6 neq C & bool(C)

,2000,_CONSTR,_RES).

get_time(Tend).

