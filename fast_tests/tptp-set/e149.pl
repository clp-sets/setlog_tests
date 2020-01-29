use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET194+3.p
% X is a subset of the union of X and Y
un(B,C,M1) & nsubset(B,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

