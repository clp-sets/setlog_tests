use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET174-6.p
% Corollary to absorbtion for intersection
un(X,Z,M1) & inters(Y,M1,M2) & inters(X,M2,M3) & ninters(X,Y,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

