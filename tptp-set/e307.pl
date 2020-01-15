use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET393-6.p
% Left identity for composition
id(U1,M1) & comp(M1,X,M2) & nrestrict(X,U1,U2,M2) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

