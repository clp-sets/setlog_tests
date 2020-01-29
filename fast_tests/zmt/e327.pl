use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inNdres 1
dares(S,R,N1) & [X,Y] in N1 & [X,Y] in R & W in S
,2000,_CONSTR,_RES).

get_time(Tend).

