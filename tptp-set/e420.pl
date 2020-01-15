use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET573+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Trybulec's 12th Boolean property of sets
B in C & disj(C,D) & B in D

,2000,_CONSTR,_RES).

get_time(Tend).

