use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET954+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : in(o_pair(A,B),cart_prod(C,D)) => in(o_pair(B,A),cart_prod(D,C))
[A,B] in cp(C,D) & [B,A] nin cp(D,C)

,2000,_CONSTR,_RES).

get_time(Tend).

