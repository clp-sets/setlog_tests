use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET519-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary 1 to no cycles of length 2
[X,Y] = X or {{X},{X,{Y}}} = X

,2000,_CONSTR,_RES).

get_time(Tend).

