use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET961+1 : TPTP v7.0.0. Bugfixed v4.0.0.
% Problem  : cart_prod(A,B) = cart_prod(B,A) => ( A=empty | B=empty | A = B )
cp(A,B) = cp(B,A) & A neq {} & B neq {} & A neq B

,2000,_CONSTR,_RES).

get_time(Tend).

