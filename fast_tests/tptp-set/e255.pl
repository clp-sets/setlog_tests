use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET303-6.p
% Range alternate definition 2
ran(Xr,M1) & Y in M1 & apply(Xr,X,Y) & [X,Y] nin Xr

,2000,_CONSTR,_RES).

get_time(Tend).

