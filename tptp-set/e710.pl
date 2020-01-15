use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET991+1 : TPTP v7.0.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : Functions and their basic properties, theorem 12
pfun(B) & dom(B,M1) & A in M1 & ran(B,M2) & apply(B,A,M3) & M3 nin M2

,2000,_CONSTR,_RES).

get_time(Tend).

