use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% def_top axiom
un(X0,M1,cp(U1,U2)) & disj(X0,M1) & nun(X0,M1,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

