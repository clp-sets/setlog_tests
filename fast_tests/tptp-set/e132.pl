use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET180-6.p
% Distribution property 2
un(X,M1,U) & disj(X,M1) & inters(X,Z,M2) & un(M1,M2,M3) & nun(M1,Z,M3) & subset(Z,U)

,2000,_CONSTR,_RES).

get_time(Tend).

