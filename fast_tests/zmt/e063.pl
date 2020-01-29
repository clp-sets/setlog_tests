use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rresUnit
ran(R,N1) & Y nin N1 & rres(R,{Y},N2) & N2 neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

