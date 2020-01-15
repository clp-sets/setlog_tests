use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET254-6.p
% Monotonicity of restriction 1
subset(X1,X2) & restrict(X1,Y,Z,M1) & restrict(X2,Y,Z,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

