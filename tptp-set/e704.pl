use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET981+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 135
(subset(A,cp(A,B)) or subset(A,cp(B,A))) & A neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

