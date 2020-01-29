use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO013-1.p
% The inverse of X is unique
un(X,Y,U) & un(X,Z,U) & inters(X,Y,{}) & inters(X,Z,{}) & Y neq Z


,2000,_CONSTR,_RES).

get_time(Tend).

