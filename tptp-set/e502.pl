use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET650+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Domain of R (X to Y) a subset of X & range of R a subset of Y
subset(D,cp(B,C)) & dom(D,M1) & ran(D,M2) & (nsubset(M1,B) or nsubset(M2,C))

,2000,_CONSTR,_RES).

get_time(Tend).

