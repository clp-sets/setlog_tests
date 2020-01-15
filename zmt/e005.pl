use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domSingleton
dom({[X,Y]},N1) & N1 neq {X}
,2000,_CONSTR,_RES).

get_time(Tend).

