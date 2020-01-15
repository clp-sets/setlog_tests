use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET962+1 : TPTP v7.0.0. Bugfixed v4.0.0.
% Problem  : cartesian_product(A,A) = cartesian_product(B,B) => A = B
cp(A,A) = cp(B,B) & A neq B

,2000,_CONSTR,_RES).

get_time(Tend).

