use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET189-6.p
% Corollary to subclass property 6
un(Y,M1,U) & disj(Y,M1) & inters(M1,X,{}) & subset(Y,X) & X neq Y & subset(X,U)

,2000,_CONSTR,_RES).

get_time(Tend).

