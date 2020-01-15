use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET224-6.p
% Cross product double distribution for intersection
inters(W,Y,M1) & inters(X,Z,M2) & ninters(cp(W,X),cp(Y,Z),cp(M1,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

