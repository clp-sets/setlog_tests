use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inId 1
id(X,N1) & [P1,P2] in N1 & (P1 nin X or P2 nin X or P1 neq P2)
,2000,_CONSTR,_RES).

get_time(Tend).

