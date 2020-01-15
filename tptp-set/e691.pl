use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET970+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 123
inters(A,B,M1) & inters(C,D,M2) & ninters(cp(A,C),cp(B,D),cp(M1,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

