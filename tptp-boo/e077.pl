use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% multiplication_is_well_defined axiom
inters(X,Y,U) & inters(X,Y,V) & U neq V

,2000,_CONSTR,_RES).

get_time(Tend).

