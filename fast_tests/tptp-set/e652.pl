use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET912+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ( in(A,B) & in(C,B) ) => intsctn(uno_pair(A,C),B) = uno_pair(A,C)
A in B & C in B & ninters({A,C},B,{A,C})

,2000,_CONSTR,_RES).

get_time(Tend).

