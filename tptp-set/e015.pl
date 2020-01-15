use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET015-1.p
% The union of sets is commutative
un(As,Bs,M1) & nun(Bs,As,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

