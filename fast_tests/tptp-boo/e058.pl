use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO032-1.p
% Independence of a system of Boolean algebra
% majority2_dual axiom
inters(X,X,M1) & un(M1,Y,M2) & un(X,X,M3) & ninters(M2,M3,X)

,2000,_CONSTR,_RES).

get_time(Tend).

