use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET949+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ~ ( in(A,cartesian_product(B,C)) & ordered_pair(D,E) != A )
A in cp(B,C) & npair(A)

,2000,_CONSTR,_RES).

get_time(Tend).

