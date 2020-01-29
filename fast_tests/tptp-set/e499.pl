use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET647+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Domain of R (X to Y) a subset of X => R is (X to range of R)
dom(C,M1) & subset(M1,B) & ran(C,M2) & nsubset(C,cp(B,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

