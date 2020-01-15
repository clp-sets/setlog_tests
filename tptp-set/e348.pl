use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET447-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Function property 3
pfun(Y) & subset(X,Y) & dom(X,M1) & nrestrict(Y,M1,U2,X) & id(U2,I2) & comp(X,I2,X)

,2000,_CONSTR,_RES).

get_time(Tend).

