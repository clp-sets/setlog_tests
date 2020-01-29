use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO023-1.p
% pixley1 axiom
pixley(X,X,Y,U,M1) & M1 neq Y


,2000,_CONSTR,_RES).

get_time(Tend).

