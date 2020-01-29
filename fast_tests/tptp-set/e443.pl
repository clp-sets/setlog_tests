use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET449-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Condition 1 for one function to be a subset of another
pfun(X) & dom(X,M1) & dom(Y,M2) & subset(M1,M2) & nsubset(X,Y) & dres(M1,X,M3) & dres(M2,Y,M4) & subset(M3,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

