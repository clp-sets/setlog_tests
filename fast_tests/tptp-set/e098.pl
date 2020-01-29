use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET145-6.p
% Commutativity outside intersection
inters(Y,Z,M1) & inters(X,M1,M2) & inters(X,Z,M3) & ninters(Y,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

