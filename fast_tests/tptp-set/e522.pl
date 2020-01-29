use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET673+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Y a subset of Y1 => Y1 restricted to R (X to Y) is R
subset(E,cp(B,C)) & subset(C,D) & nrres(E,D,E)

,2000,_CONSTR,_RES).

get_time(Tend).

