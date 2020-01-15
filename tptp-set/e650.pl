use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET910+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : intersection(A,singleton(B)) = singleton(B) => in(B,A)
inters(A,{B},{B}) & B nin A

,2000,_CONSTR,_RES).

get_time(Tend).

