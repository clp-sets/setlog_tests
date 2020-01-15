use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET295-6.p
% Inverse distributes over intersection
inv(X,M1) & inv(Y,M2) & inters(M1,M2,M3) & inters(X,Y,M4) & ninv(M4,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

