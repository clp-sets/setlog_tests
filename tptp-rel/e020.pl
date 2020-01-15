use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL016+1.p
% A modular law
comp(X0,X1,M1) & comp(X0,X2,M2) & un(M2,M3,cp(U1,U2)) & disj(M2,M3) & inters(M1,M3,M4) & un(X2,M5,cp(U3,U2)) & disj(X2,M5) & inters(X1,M5,M6) & comp(X0,M6,M7) & comp(X0,X2,M8) & un(M8,M9,cp(U1,U2)) & disj(M8,M9) & ninters(M7,M9,M4) & subset(X0,cp(U1,U3)) & subset(X2,cp(U3,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

