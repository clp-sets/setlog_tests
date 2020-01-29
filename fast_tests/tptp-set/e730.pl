use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET111-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : 1st is the ordered pair, second condition
first(X,M1) & second(X,M2) & M3 in M1 & M4 in M2 & sop([M3,M4],M5) & M5 neq X & M1 neq X

,2000,_CONSTR,_RES).

get_time(Tend).

