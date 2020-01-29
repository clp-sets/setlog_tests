use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET316-6.p
% Range property 4
restrict(X,U1,Z,M1) & ran(M1,M2) & ran(X,M3) & ninters(M2,Z,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

