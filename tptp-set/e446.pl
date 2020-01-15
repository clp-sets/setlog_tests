use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET524-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Equivalent condition 1 for x not to be an ordered pair
first(X,X) & second(X,M1) & X neq M1

,2000,_CONSTR,_RES).

get_time(Tend).

