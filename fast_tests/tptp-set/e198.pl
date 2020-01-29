use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET244-6.p
% Restriction with universal class
nrestrict(cp(U1,U2),X,Y,cp(X,Y)) & subset(X,U1) & subset(Y,U2)

,2000,_CONSTR,_RES).

get_time(Tend).

