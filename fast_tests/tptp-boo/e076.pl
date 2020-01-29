use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% addition_is_well_defined axiom
un(X,Y,U) & un(X,Y,V) & U neq V

,2000,_CONSTR,_RES).

get_time(Tend).

