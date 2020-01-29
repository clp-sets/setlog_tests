use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO009-1.p
% Multiplication absorption (X * (X + Y) = X)
un(X,Y,M1) & ninters(X,M1,X)


,2000,_CONSTR,_RES).

get_time(Tend).

