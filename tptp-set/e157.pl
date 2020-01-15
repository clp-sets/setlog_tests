use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET203-6.p
% Corollary to cross product product property 1
subset(X,U1) & subset(Y,U2) & U in X & V in Y & [U,V] nin cp(U1,U2)

,2000,_CONSTR,_RES).

get_time(Tend).

