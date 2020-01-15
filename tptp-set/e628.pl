use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET882+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : A != B => diff(unordered_pair(A,B),singleton(B)) = singleton(A)
A neq B & ndiff({A,B},{B},{A})

,2000,_CONSTR,_RES).

get_time(Tend).

