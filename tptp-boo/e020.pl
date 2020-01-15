use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO015-1.p
% DeMorgan for inverse and sum (X^-1 + Y^-1) = (X * Y)^-1
un(X,M1,U) & disj(X,M1) & un(Y,M2,U) & disj(Y,M2) & un(M1,M2,M3) & inters(X,Y,M4) & un(M4,M5,U) & disj(M4,M5) & M5 neq M3


,2000,_CONSTR,_RES).

get_time(Tend).

