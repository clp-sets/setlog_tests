use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO02-1.p
% TBA left_inverse axiom
subset(X,U) & un(Y,M1,U) & disj(Y,M1) & tba(M1,Y,X,M2) & M2 neq X


,2000,_CONSTR,_RES).

get_time(Tend).

