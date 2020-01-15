use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL034+1.p
% Propagation of vectors
vec(X0,U) & inters(X0,X2,M1) & comp(X1,M1,M2) & inv(X0,M3) & inters(X1,M3,M4) & comp(M4,M1,M5) & nsubset(M2,M5) & dom(X1,M6) & subset(M6,U)

,2000,_CONSTR,_RES).

get_time(Tend).

