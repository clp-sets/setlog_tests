use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO003-1.p
% Multiplication is idempotent (X * X = X)
ninters(X,X,X)


,2000,_CONSTR,_RES).

get_time(Tend).
