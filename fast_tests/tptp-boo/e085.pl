use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO039-1.p
% Sh-1 is a single axiom for Boolean algebra
% meredith_2_basis
% nand(nand(a,a),nand(b,a)) != a
nand(A,A,U,M1) & nand(B,A,U,M2) & nand(M1,M2,U,M3) & M3 neq A

,2000,_CONSTR,_RES).

get_time(Tend).

