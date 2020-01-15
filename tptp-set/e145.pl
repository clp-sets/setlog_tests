use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET190-6.p
% Subclass property 7
subset(X,Y) & un(X,M1,U) & disj(X,M1) & nun(M1,Y,U) & subset(Y,U)

,2000,_CONSTR,_RES).

get_time(Tend).

