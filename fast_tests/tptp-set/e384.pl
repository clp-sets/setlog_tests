use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET039-3 : TPTP v7.0.0. Released v1.0.0.
% Problem  : Properties of apply for composition of functions, 1 of 3
pfun(A_function) & dom(A_function,M1) & A in M1 & apply(A_function,A,M2) & apply(Another_function,M2,M3) & comp(A_function,Another_function,M4) & apply(M5,A,M5) & nsubset({M3},{M5})

,2000,_CONSTR,_RES).

get_time(Tend).

