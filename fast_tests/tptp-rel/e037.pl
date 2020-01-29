use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL033+1.p
% Sequential composition distributes in each argument of meet
vec(X0,U) & inters(X0,X1,M1) & comp(X1,X2,M3) & inters(X0,M3,M2) & ran(X1,M4) & subset(M4,U) & ran(X2,M5) & subset(M5,U)  & ncomp(M1,X2,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

