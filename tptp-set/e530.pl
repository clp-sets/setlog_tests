use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET689+4 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Property of subset
subset(A,B) & subset(B,C) & subset(C,A) & A neq C


,2000,_CONSTR,_RES).

get_time(Tend).

