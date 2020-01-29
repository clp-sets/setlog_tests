use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO014-1.p
% DeMorgan for inverse and product (X+Y)^-1 = (X^-1) * (Y^-1)
un(X,Y,Z) & un(Z,M3,U) & disj(Z,M3) & un(X,M1,U) & disj(X,M1) & un(Y,M2,U) & disj(Y,M2) & ninters(M1,M2,M3)


,2000,_CONSTR,_RES).

get_time(Tend).

