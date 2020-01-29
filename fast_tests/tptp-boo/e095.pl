use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO048-1 : TPTP v7.0.0. Released v2.5.0.
% Problem  : Single axiom C9 for Boolean algebra in the Sheffer stroke
nand(B,B,U,M1) & nand(A,M1,U,M2) & nand(M2,A,U,M3) & nand(C,A,U,M4) & nand(B,M4,U,M5) & nand(M3,M5,U,M6) & M6 neq B

,2000,_CONSTR,_RES).

get_time(Tend).

