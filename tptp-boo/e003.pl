use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO02-1.p
% TBA ternary_multiply_2 axiom
tba(X,X,Y,M1) & M1 neq X


,2000,_CONSTR,_RES).

get_time(Tend).

