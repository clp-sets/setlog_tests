use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET885+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : subset(unordered_pair(A,B),singleton(C)) => A = C
subset({A,B},{C}) & A neq C

,2000,_CONSTR,_RES).

get_time(Tend).

