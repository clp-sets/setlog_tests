use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-2.p
% Boolean algebra (equality) axioms
% distributivity3 axiom
un(X,Y,M1) & inters(M1,Z,M2) & inters(X,Z,M3) & inters(Y,Z,M4) & nun(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

