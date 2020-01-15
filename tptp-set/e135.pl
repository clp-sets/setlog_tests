use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET183+3.p
% If X is a subset of  Y, then the intersection of X and Y is X
subset(B,C) & ninters(B,C,B)

,2000,_CONSTR,_RES).

get_time(Tend).

