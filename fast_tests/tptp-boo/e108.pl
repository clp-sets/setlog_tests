use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO061-1 : TPTP v7.0.0. Released v2.5.0.
% Problem  : Single non-axiom M6D for Boolean algebra in the Sheffer stroke
nand(B,B,U,M1) & nand(A,M1,U,M2) & nand(A,M2,U,M3) & nand(A,C,U,M4) & 
nand(B,M4,U,M5) & nand(M3,M5,U,M6) & M6 neq B

,2000,_CONSTR,_RES).

get_time(Tend).

