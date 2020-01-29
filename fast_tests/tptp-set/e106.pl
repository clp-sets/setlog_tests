use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET153-6.p
% Intersection with complement is null class
un(X,M1,U) & disj(X,M1) & ninters(M1,X,{})

,2000,_CONSTR,_RES).

get_time(Tend).

