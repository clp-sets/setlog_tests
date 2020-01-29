use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET929+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : diff(uno_pair(A,B),C) = empty <=> ( in(A,C) & in(B,C) )
diff({A,B},C,{}) & (A nin C or B nin C)

,2000,_CONSTR,_RES).

get_time(Tend).

