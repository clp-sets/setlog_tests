use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET876+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : A != B => disjoint(singleton(A),singleton(B))
A neq B & ndisj({A},{B})

,2000,_CONSTR,_RES).

get_time(Tend).

