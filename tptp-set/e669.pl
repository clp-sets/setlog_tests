use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET927+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : diff(uno_pair(A,B),C) = sgtn(A) <=> (~in(A,C) & (in(B,C) | A = B))
diff({A,B},C,{A}) & (A in C or B nin C & A neq B)

,2000,_CONSTR,_RES).

get_time(Tend).

