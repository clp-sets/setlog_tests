use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET931+1 : TPTP v7.0.0. Released v3.2.0. (2)
% Problem  : Basic properties of sets, theorem 75
ndiff(A,{B,C},{}) & (A = {} or A = {B} or A = {C} or A = {B,C})

,2000,_CONSTR,_RES).

get_time(Tend).

