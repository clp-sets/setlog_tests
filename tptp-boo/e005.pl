use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO02-1.p
% TBA right_inverse axiom,
subset(X,U) & un(Y,M1,U) & disj(Y,M1) & tba(X,Y,M1,M2) & M2 neq X


,2000,_CONSTR,_RES).

get_time(Tend).

