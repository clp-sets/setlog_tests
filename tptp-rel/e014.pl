use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL010+1.p
% Schroeder equivalence (first implication)
comp(X0,X1,M1) & inters(M1,X2,{}) & inv(X0,M2) & comp(M2,X2,M3) & ninters(X1,M3,{})

,2000,_CONSTR,_RES).

get_time(Tend).

