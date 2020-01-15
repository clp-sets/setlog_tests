use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET980+1 : TPTP v7.0.0. Bugfixed v4.0.0.
% Problem  : Basic properties of sets, theorem 134
cp(A,B) = cp(C,D) & A neq {} & B neq {} & (A neq C or B neq D)

,2000,_CONSTR,_RES).

get_time(Tend).

