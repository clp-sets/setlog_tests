use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET170-6.p
% Distribution of intersection over union 2
inters(X,Z,M1) & inters(Y,Z,M2) & un(M1,M2,M3) & un(X,Y,M4) & ninters(M4,Z,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

