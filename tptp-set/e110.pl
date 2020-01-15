use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET157-6.p
% Complement is unique
un(X,Y,U) & inters(X,Y,{}) & un(X,M1,U) & disj(X,M1) & M1 neq Y

,2000,_CONSTR,_RES).

get_time(Tend).

