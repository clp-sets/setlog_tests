use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET672+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Y1 restricted to R (X to Y) is (X to Y1)
subset(E,cp(D,B)) & rres(E,C,M1) & nsubset(M1,cp(D,C))

,2000,_CONSTR,_RES).

get_time(Tend).

