use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET632+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X (= Y & X (= Z & Y disjoint from Z, then X = empty set
subset(B,C) & subset(B,D) & disj(C,D) & B neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

