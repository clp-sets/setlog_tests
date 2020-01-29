use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% distributivity6 axiom
un(X,Y,M1) & un(X,Z,M2) & inters(Y,Z,M3) & inters(M1,M2,M4) & nun(X,M3,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

