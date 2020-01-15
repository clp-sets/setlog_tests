use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET482-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Replacement property 4
dom(X,M1) & ran(X,M2) & subset(M1,U1) & subset(M2,U2) & nsubset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

