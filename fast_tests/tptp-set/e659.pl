use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET919+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : in(A,B) => ((in(C,B) & A!=C) | intsctn(uno_pair(A,C),B) = sgtn(A))
A in B & (C nin B or A = C) & ninters({A,C},B,{A})

,2000,_CONSTR,_RES).

get_time(Tend).

