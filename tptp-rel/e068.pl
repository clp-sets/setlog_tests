use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% composition_distributivity axiom
un(X0,X1,M1) & comp(M1,X2,M2) & comp(X0,X2,M3) & comp(X1,X2,M4) & nun(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

