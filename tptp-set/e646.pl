use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET906+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : subset(set_union2(unordered_pair(A,B),C),C) => in(A,C)
un({A,B},C,M1) & subset(M1,C) & A nin C

,2000,_CONSTR,_RES).

get_time(Tend).

