use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL035+1.p
% Propagation of vectors
vec(X0,U) & inv(X0,M1) & inters(X1,M1,M2) & inters(X0,X2,M3) & comp(M2,M3,M4) & ncomp(X1,M3,M4) & dom(X1,M5) & subset(M5,U)

,2000,_CONSTR,_RES).

get_time(Tend).

