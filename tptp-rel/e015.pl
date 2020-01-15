use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL011+1.p
% Schroeder equivalence (second implication)
inv(X1,M1) & comp(M1,X2,M2) & inters(X0,M2,{}) & comp(X1,X0,M3) & ninters(M3,X2,{})

,2000,_CONSTR,_RES).

get_time(Tend).

