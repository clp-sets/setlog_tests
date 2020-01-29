use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET642+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : A a subset of R (X to Y) => A is (X to Y)
subset(E,cp(C,D)) & subset(B,E) & nsubset(B,cp(C,D))

,2000,_CONSTR,_RES).

get_time(Tend).

