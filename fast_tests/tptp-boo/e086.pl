use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO039-1.p
% Sh-1 is a single axiom for Boolean algebra
% meredith_2_basis
% nand(a,nand(b,nand(a,c))) != nand(nand(nand(c,b),b),a)
nand(A,C,U,M1) & nand(B,M1,U,M2) & nand(A,M2,U,M3) & nand(C,B,U,M4) & nand(M4,B,U,M5) & nand(M5,A,U,M6) & M3 neq M6

,2000,_CONSTR,_RES).

get_time(Tend).

