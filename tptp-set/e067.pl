use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET096+1.p
% There are at most two subsets of a singleton set
subset(X,{Y}) & X neq {} & X neq {Y}

,2000,_CONSTR,_RES).

get_time(Tend).

