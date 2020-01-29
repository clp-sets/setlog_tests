use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET950+1 : TPTP v7.0.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : Basic properties of sets, theorem 103
subset(A,cp(B,C)) & D in A & (npair(D) or D = [E,F] & (E nin B or F nin C))

,2000,_CONSTR,_RES).

get_time(Tend).

