use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET191-6.p
% Subclass property 8
un(X,M1,U) & disj(X,M1) & un(M1,Y,U) & nsubset(X,Y)

,2000,_CONSTR,_RES).

get_time(Tend).

