use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET392-6.p
% Right identity for composition
id(U2,M1) & comp(X,M1,M2) & nrestrict(X,U1,U2,M2) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

