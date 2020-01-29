use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET648+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Range of R (X to Y) a subset of Y => R is (domain of R to Y)
ran(C,M1) & subset(M1,B) & dom(C,M2) & nsubset(C,cp(M2,B))

,2000,_CONSTR,_RES).

get_time(Tend).

