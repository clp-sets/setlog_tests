use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET255-6.p
% Monotonicity of restriction 2
subset(Y1,Y2) & restrict(X,Y1,Z,M1) & restrict(X,Y2,Z,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

