use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET924+1 : TPTP v7.0.0. Released v3.2.0. (1)
% Problem  : difference(singleton(A),B) = singleton(A) <=> ~ in(A,B)
diff({A},B,{A}) & A in B

,2000,_CONSTR,_RES).

get_time(Tend).

