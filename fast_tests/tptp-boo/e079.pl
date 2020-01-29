use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-2.p
% Boolean algebra (equality) axioms
% distributivity2 axiom
inters(Y,Z,M1) & un(X,M1,M2) & un(X,Y,M3) & un(X,Z,M4) & ninters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

