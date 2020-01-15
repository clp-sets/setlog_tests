use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET664+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : R (X to Y) is (X to empty set) => R is empty set
subset(D,cp(B,C)) & subset(D,cp(C,{})) & D neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

