use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET960+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : cart_prod(A,B) = empty <=> ( A = empty | B = empty )
cp(A,B) = {} & A neq {} & B neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

