use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET041-3.p
% Properties of apply for composition of functions, 3 of 3
apply(A_function,A,M2) & apply(Another_function,M2,M3) & comp(A_function,Another_function,M4) & apply(M4,A,M5) & M3 neq M5

,2000,_CONSTR,_RES).

get_time(Tend).

