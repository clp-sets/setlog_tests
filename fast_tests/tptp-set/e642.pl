use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET902+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 43
un(B,C,{A}) & (B neq {A} or C neq {A}) & (B neq {} or C neq {A}) & (B neq {A} or C neq {})

,2000,_CONSTR,_RES).

get_time(Tend).

