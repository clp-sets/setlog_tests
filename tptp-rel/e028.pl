use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL024+1.p
% A simple consequence of isotonicity
inv(X1,M1) & inters(X0,M1,M2) & inters(X1,X2,M3) & comp(M2,M3,M4) & comp(M2,X2,M5) & nsubset(M4,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

