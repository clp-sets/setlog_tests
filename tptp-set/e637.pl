use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET894+1 : TPTP v7.0.0. Bugfixed v4.0.0.
% Problem  : cart_prod(singleton(A),singleton(B)) = singleton(o_pair(A,B))
cp({A},{B}) neq {[A,B]}

,2000,_CONSTR,_RES).

get_time(Tend).

