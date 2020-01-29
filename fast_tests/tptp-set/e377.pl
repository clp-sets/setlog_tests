use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET481-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Replacement property 3
subset(X,U1) & subset(Y,U2) & nsubset(cp(X,Y),cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

