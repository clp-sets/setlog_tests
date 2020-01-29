use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET461-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Domain of restricted identity
id(U,M1) & restrict(M1,X,Y,M2) & dom(M2,M3) & ninters(X,Y,M3) & (subset(X,U) or subset(Y,U))

,2000,_CONSTR,_RES).

get_time(Tend).

