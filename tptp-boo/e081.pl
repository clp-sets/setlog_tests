use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-2.p
% Boolean algebra (equality) axioms
% distributivity4 axiom
un(Y,Z,M1) & inters(X,M1,M2) & inters(X,Y,M3) & inters(X,Z,M4) & nun(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

