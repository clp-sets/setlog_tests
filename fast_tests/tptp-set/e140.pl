use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET188-6.p
% Subclass property 6
un(Y,M1,U) & disj(Y,M1) & inters(M1,X,{}) & nsubset(X,Y) & subset(X,U)

,2000,_CONSTR,_RES).

get_time(Tend).

