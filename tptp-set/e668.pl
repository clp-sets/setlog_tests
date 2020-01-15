use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET926+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : difference(sgtn(A),B) = empty | difference(sgtn(A),B) = sgtn(A)
ndiff({A},B,{}) & ndiff({A},B,{A})

,2000,_CONSTR,_RES).

get_time(Tend).

