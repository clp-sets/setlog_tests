use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET925+1 : TPTP v7.0.0. Released v3.2.0. (2)
% Problem  : difference(singleton(A),B) = empty_set <=> in(A,B)
ndiff({A},B,{}) & A in B

,2000,_CONSTR,_RES).

get_time(Tend).

