use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET176-6.p
% Corollary to absorbtion for union
inters(X,Z,M1) & un(Y,M1,M2) & un(X,M2,M3) & nun(X,Y,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

