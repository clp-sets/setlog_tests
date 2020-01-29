use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-2.p
% Boolean algebra (equality) axioms
% distributivity1 axiom
inters(X,Y,M1) & un(M1,Z,M2) & un(X,Z,M3) & un(Y,Z,M4) & ninters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

