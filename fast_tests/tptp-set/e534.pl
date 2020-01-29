use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET691+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : A set is a subset of empty set if and only if it is equal to it
nsubset(A,{}) & A = {}

,2000,_CONSTR,_RES).

get_time(Tend).
