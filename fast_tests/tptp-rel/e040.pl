use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL036+1.p
% Propagation of vectors
vec(X0,U) & inv(X0,M1) & inters(X1,M1,M2) & comp(M2,X2,M3) & inters(X0,X2,M4) & comp(M2,M4,M5) & nsubset(M3,M5) & ran(X2,M6) & subset(M6,U)

,2000,_CONSTR,_RES).

get_time(Tend).

