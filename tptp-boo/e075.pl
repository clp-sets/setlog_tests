use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% multiplicative_inverse2 axiom
un(X,M1,U) & disj(X,M1) & ninters(X,M1,{})

,2000,_CONSTR,_RES).

get_time(Tend).

