use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET110-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : 2nd is the ordered pair, first condition
first(X,M1) & second(X,M2) & M3 in M1 & sop(M4,{M1,{M3,M2}}) & npair(M4) & M2 neq X

,2000,_CONSTR,_RES).

get_time(Tend).

