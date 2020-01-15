use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET928+1 : TPTP v7.0.0. Released v3.2.0. (2)
% Problem  : diff(uno_pair(A,B),C) = uno_pair(A,B) <=> (~in(A,C) & ~in(B,C))
ndiff({A,B},C,{A,B}) & A nin C & B nin C

,2000,_CONSTR,_RES).

get_time(Tend).

