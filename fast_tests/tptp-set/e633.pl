use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET887+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ~ ( subset(uno_pair(A,B),uno_pair(C,D)) & A != C & A != D )
subset({A,B},{C,D}) & A neq C & A neq D

,2000,_CONSTR,_RES).

get_time(Tend).

