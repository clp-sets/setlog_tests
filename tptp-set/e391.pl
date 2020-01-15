use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET488-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Replacement property 10
un(X,Y,M1) & set(M1) & nset(X)

,2000,_CONSTR,_RES).

get_time(Tend).

