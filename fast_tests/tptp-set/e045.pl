use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET065+1.p
% Null class is a set (follows from axiom of infinity)
nset({})

,2000,_CONSTR,_RES).

get_time(Tend).

