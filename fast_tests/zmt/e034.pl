use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inDres 1
dres(S,R,N1) & [X,Y] in N1 & ([X,Y] nin R or X nin S)
,2000,_CONSTR,_RES).

get_time(Tend).

