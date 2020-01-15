use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO033-1.p
% Independence of a system of Boolean algebra (bool)
% distributivity axiom
inters(X,Y,M1) & inters(Y,Z,M2) & inters(Z,X,M3) & un(M2,M3,M4) & un(M1,M4,M5) & un(X,Y,M6) & un(Y,Z,M7) & un(Z,X,M8) & inters(M7,M8,M9) & ninters(M6,M9,M5) & bool(X) & bool(Y) & bool(Z)


,2000,_CONSTR,_RES).

get_time(Tend).

