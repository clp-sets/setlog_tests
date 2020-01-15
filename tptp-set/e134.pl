use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET182-6.p
% Distribution property 3
un(X,M1,U) & disj(X,M1) & inters(M1,Y,M2) & inters(X,Y,M3) & nun(M2,M3,Y) & subset(Y,U)

,2000,_CONSTR,_RES).

get_time(Tend).

