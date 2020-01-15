use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% maddux2_join_associativity axiom
un(X1,X2,M1) & un(X0,M1,M2) & un(X0,X1,M3) & nun(M3,X2,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

