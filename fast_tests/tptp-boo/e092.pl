use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO045-1 : TPTP v7.0.0. Released v2.5.0.
% Problem  : Single axiom C6 for Boolean algebra in the Sheffer stroke
nand(B,C,U,M1) & nand(A,M1,U,M2) & nand(A,M2,U,M3) & nand(A,B,U,M4) & nand(C,M4,U,M5) & nand(M3,M5,U,M6) & M6 neq C

,2000,_CONSTR,_RES).

get_time(Tend).

