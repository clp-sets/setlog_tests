use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pairInFunction
pfun(F) & [X,Y] in F & apply(F,X,N1) & Y = N1 & F neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

