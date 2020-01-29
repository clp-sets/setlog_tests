use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET517-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : If member of X is X then X is not a singleton of a set
M1 in X & {M1} = X & M1 = X

,2000,_CONSTR,_RES).

get_time(Tend).

