use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET662+3 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : The empty set is a relation from X to Y
nsubset({},cp(B,C))

,2000,_CONSTR,_RES).

get_time(Tend).

