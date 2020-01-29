use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET149-6.p
% Corollary to idempotency of intersection
inters(X,Y,M1) & ninters(X,M1,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

