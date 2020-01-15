use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% composition_identity axiom
id(U2,M2) & ncomp(X0,M2,X0) & subset(X0,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

