use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET879+1 : TPTP v7.0.0. Released v3.2.0. (2)
% Problem  : difference(singleton(A),singleton(B)) = singleton(A) <=> A != B
ndiff({A},{B},{A}) & A neq B

,2000,_CONSTR,_RES).

get_time(Tend).
