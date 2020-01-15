use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET920+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : intersection(uno_pair(A,B),C) = uno_pair(A,B) => in(A,C)
inters({A,B},C,{A,B}) & A nin C

,2000,_CONSTR,_RES).

get_time(Tend).

