use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO031-1.p
% Dual BA 3-basis, proof of distributivity
% property3 axiom
un(X,M1,U) & disj(X,M1) & un(X,M1,M2) & ninters(M2,Y,Y) & subset(Y,U)

,2000,_CONSTR,_RES).

get_time(Tend).

