use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET652+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Range of R (X to Y) a subset of Y1 => R is (X to Y1)
subset(E,cp(D,B)) & ran(E,M1) & subset(M1,C) & nsubset(E,cp(D,C))

,2000,_CONSTR,_RES).

get_time(Tend).

