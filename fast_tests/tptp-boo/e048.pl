use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO028-1.p
% Self-dual 2-basis from majority reduction, part 1
% l2 axiom
un(X,Z,M1) & un(Y,M1,M2) & ninters(X,M2,X)

,2000,_CONSTR,_RES).

get_time(Tend).

