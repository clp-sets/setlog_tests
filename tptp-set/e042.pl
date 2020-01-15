use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET062+1.p
% The empty set is a subset of X
nsubset({},X)

,2000,_CONSTR,_RES).

get_time(Tend).

