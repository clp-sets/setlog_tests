use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% dresUnit
dres(S,{[X,Y]},N1) & W in S & N1 = {[X,Y]}
,2000,_CONSTR,_RES).

get_time(Tend).

