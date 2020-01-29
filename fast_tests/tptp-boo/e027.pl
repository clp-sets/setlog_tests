use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO020-1.p
% frink2 axiom
inters(X,Y,M1) & inters(M1,Z,M2) & inters(M2,W,M3) & inters(Y,Z,M4) & inters(M4,X,M3) & un(W,M5,U) & disj(W,M5) & ninters(M2,M5,{})


,2000,_CONSTR,_RES).

get_time(Tend).

