use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET027+1 : TPTP v7.0.0. Bugfixed v5.4.0.
% Problem  : Transitivity of subset
subset(X,Y) & subset(Y,Z) & nsubset(X,Z)

,2000,_CONSTR,_RES).

get_time(Tend).

