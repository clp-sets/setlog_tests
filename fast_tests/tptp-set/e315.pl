use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET401-6.p
% Left compose with universal class
dres(U2,X,M1) & ran(M1,M2) & M3 = cp(U1,M2) & ran(X,M4) & M3 neq cp(U1,M4) & subset(X,cp(U2,U3))

,2000,_CONSTR,_RES).

get_time(Tend).

