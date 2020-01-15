use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET528-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary 1 to ordered pair components are sets
first(X,M1) & second(X,M2) & M3 in M1 & {M1,{M3,M2}} = X & sop([M4,M5],X) & M4 in U1 & M5 in U2 & [M4,M5] nin cp(U1,U2) 

,2000,_CONSTR,_RES).

get_time(Tend).

