use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET653+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X a subset of X1 => R (X to Y) is (X1 to Y)
subset(E,cp(B,D)) & subset(B,C) & nsubset(E,cp(C,D))

,2000,_CONSTR,_RES).

get_time(Tend).

