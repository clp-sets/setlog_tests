use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET914+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ~ ( disjoint(unordered_pair(A,B),C) & in(A,C) )
disj({A,B},C) & A in C

,2000,_CONSTR,_RES).

get_time(Tend).

