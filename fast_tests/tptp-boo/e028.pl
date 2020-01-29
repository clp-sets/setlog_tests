use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO020-1.p
% frink3 axiom
inters(X,Y,M1) & inters(M1,Z,M2) & un(W,M5,U) & disj(W,M5) & inters(M2,M5,{}) & inters(M2,W,M6) & inters(Y,Z,M4) & ninters(M4,X,M6)
& subset(X,U)


,2000,_CONSTR,_RES).

get_time(Tend).

