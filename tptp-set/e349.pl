use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET448-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Function property 4
pfun(X) & subset(Y,X) & dom(Y,M1) & subset(Z,M1) & restrict(X,Z,U2,M2) & nrestrict(Y,Z,U2,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

