use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET917+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : disjoint(sgtn(A),B) | intersection(sgtn(A),B) = sgtn(A)
ndisj({A},B) & ninters({A},B,{A})

,2000,_CONSTR,_RES).

get_time(Tend).

