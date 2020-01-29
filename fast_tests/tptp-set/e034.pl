use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET047+1.p
% Set equality is symmetric
set(X) & set(Y) & (X = Y & Y neq X or Y = X & X neq Y)

,2000,_CONSTR,_RES).

get_time(Tend).

