use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% maddux1_join_commutativity,axiom
un(X0,X1,M1) & nun(X1,X0,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

