use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET654+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Y a subset of Y1 => R (X to Y) is (X to Y1)
subset(E,cp(D,B)) & subset(B,C) & nsubset(E,cp(D,C))

,2000,_CONSTR,_RES).

get_time(Tend).

