use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET004-1.p
% A set is a subset of the union of itself and another set
un(A,B,AUB) & nsubset(A,AUB)

,2000,_CONSTR,_RES).

get_time(Tend).

