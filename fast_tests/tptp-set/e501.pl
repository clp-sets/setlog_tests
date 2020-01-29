use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET649+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Domain R a subset of X & range R a subset of Y => R is (X to Y)
dom(D,M1) & subset(M1,B) & ran(D,M2) & subset(M2,C) & nsubset(D,cp(B,C))

,2000,_CONSTR,_RES).

get_time(Tend).

