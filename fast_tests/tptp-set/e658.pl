use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET918+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ~ ( intersection(uno_pair(A,B),C) = sgtn(A) & in(B,C) & A != B )
inters({A,B},C,{A}) & B in C & A neq B

,2000,_CONSTR,_RES).

get_time(Tend).

