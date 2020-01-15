use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET063+1.p
% If X is a subset of the empty set, then X is the empty set
subset(X,{}) & X neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

