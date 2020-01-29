use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO007-1.p
% associativity interesection
inters(X,Y,M1) & inters(M1,Z,M2) & inters(Y,Z,M3) & ninters(X,M3,M2)


,2000,_CONSTR,_RES).

get_time(Tend).

