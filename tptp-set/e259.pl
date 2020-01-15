use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET308-6.p
% Monotonicity of range 1
subset(X,Y) & ran(X,M1) & ran(Y,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

