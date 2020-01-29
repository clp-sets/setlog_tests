use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET639+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Trybulec's 121th Boolean property of sets
subset(B,C) & inters(C,B,{}) & B neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

