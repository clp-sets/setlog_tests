use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET193-6.p
% Subclass property 10
un(Y,M1,U) & disj(Y,M1) & un(X,M2,U) & disj(X,M2) & subset(M1,M2) & nsubset(X,Y)

,2000,_CONSTR,_RES).

get_time(Tend).

