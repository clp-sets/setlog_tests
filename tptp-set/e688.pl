use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET967+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 120
un(A,B,M1) & (un(cp(A,C),cp(B,C),M2) & cp(M1,C) neq M2 or un(cp(C,A),cp(C,B),M3) & cp(C,M1) neq M3)

,2000,_CONSTR,_RES).

get_time(Tend).

