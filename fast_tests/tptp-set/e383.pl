use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET030-3 : TPTP v7.0.0. Released v1.0.0.
% Problem  : Function values are little sets
pfun(A_function) & apply(A_function,B,M1) & nset({M1})

,2000,_CONSTR,_RES).

get_time(Tend).

