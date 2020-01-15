use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET670+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : R (X to Y) restricted to X1 is (X1 to Y)
subset(E,cp(B,D)) & dres(C,E,M1) & nsubset(M1,cp(C,D))

,2000,_CONSTR,_RES).

get_time(Tend).

