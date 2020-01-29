use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO039-1.p
% Sh-1 is a single axiom for Boolean algebra (bool)
% meredith_2_basis
% nand(a,nand(b,nand(a,c))) != nand(nand(nand(c,b),b),a)
nandb(A,C,M1) & nandb(B,M1,M2) & nandb(A,M2,M3) & nandb(C,B,M4) & nandb(M4,B,M5) & nandb(M5,A,M6) & M3 neq M6

,2000,_CONSTR,_RES).

get_time(Tend).

