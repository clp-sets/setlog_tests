use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET455-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Identity alternate definition 2
id(U,M1) & [X,Y] in M1 & X neq Y

,2000,_CONSTR,_RES).

get_time(Tend).

