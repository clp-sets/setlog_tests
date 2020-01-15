use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET177-6.p
% Distribution property 1
un(X,M1,U) & disj(X,M1) & inters(M1,Z,M2) & un(X,M2,M3) & nun(X,Z,M3) & subset(Z,U)

,2000,_CONSTR,_RES).

get_time(Tend).

