use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET256-6.p
% Monotonicity of restriction 3
subset(Z1,Z2) & restrict(X,Y,Z1,M1) & restrict(X,Y,Z2,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

