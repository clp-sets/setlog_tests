use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET692+4 : TPTP v7.0.0. Released v2.2.0. (2)
% Problem  : A = A ^ B iff A (= B
ninters(A,B,A) & subset(A,B)

,2000,_CONSTR,_RES).

get_time(Tend).

