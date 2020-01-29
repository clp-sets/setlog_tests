use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET657+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : The field of a relation R from X to Y is a subset of X union Y
subset(D,cp(B,C)) & dom(B,M1) & ran(B,M2) & un(M1,M2,M3) & un(B,C,M4) & nsubset(M2,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

