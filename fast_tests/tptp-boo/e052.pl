use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO030-1.p
% Independence of a BA 2-basis by majority reduction
% majority1 axiom
inters(X,Y,M1) & un(X,Y,M2) & un(M1,X,M3) & ninters(M3,M2,X)

,2000,_CONSTR,_RES).

get_time(Tend).

