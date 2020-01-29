use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% distributivity2 axiom
inters(X,Y,M1) & inters(X,Z,M2) & un(Y,Z,M3) & un(M1,M2,M4) & ninters(X,M3,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

