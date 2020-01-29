use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET646+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If x is in X and y is in Y then {<x,y>} is from X to Y.
D in B & E in C & nsubset({[D,E]},cp(B,C))

,2000,_CONSTR,_RES).

get_time(Tend).

