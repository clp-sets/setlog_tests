use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET172-6.p
% Distribution of union over intersection 2
un(X,Z,M1) & un(Y,Z,M2) & inters(M1,M2,M3) & inters(X,Y,M4) & nun(M4,Z,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

