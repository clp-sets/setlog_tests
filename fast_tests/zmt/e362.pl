use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% overrideInPowerCross
subset(R,cp(A,B)) & subset(Q,cp(A,B)) & oplus(R,Q,M1) & nsubset(M1,cp(A,B))

,2000,_CONSTR,_RES).

get_time(Tend).

