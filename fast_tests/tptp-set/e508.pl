use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET656+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : The intersection of a relation R from X to Y and X x Y is R
subset(D,cp(B,C)) & ninters(D,cp(B,C),D)

,2000,_CONSTR,_RES).

get_time(Tend).

