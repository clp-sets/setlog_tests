use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET901+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : Basic properties of sets, theorem 42
subset(A,{B,C}) & A neq {} & A neq {B} & A neq {C} & A neq {B,C}

,2000,_CONSTR,_RES).

get_time(Tend).

