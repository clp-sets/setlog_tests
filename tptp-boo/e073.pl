use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO037-1.p
% Boolean algebra axioms
% distributivity8 axiom
un(Y,X,M1) & un(Z,X,M2) & inters(Y,Z,M3) & inters(M1,M2,M4) & nun(M3,X,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

