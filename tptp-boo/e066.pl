use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% multiplicative_identity2 axiom
subset(X,U) & ninters(X,U,X)

,2000,_CONSTR,_RES).

get_time(Tend).

