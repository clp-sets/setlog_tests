use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inNrres 2
[X,Y] in R & Y nin S & rares(R,S,N2) & [X,Y] nin N2
,2000,_CONSTR,_RES).

get_time(Tend).

