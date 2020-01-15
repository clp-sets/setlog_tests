use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET530-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary 3 to ordered pair components are sets
sop([X,Y],M1) & first(M1,M2) & M3 in M2 & second(M1,M4) & sop([X,Y],{M2,{M3,M4}}) & nset(M4)

,2000,_CONSTR,_RES).

get_time(Tend).

