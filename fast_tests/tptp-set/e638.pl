use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET895+1 : TPTP v7.0.0. Bugfixed v4.0.0.
% Problem  : Basic properties of sets, theorem 36
cp({A},{B,C}) neq {[A,B],[A,C]} or cp({A,B},{C}) neq {[A,C],[B,C]}

,2000,_CONSTR,_RES).

get_time(Tend).

