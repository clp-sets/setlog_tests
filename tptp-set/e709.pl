use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET987+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ~ in(A,B) => difference(union(B,singleton(A)),singleton(A)) = B
A nin B & un(B,{A},M1) & ndiff(M1,{A},B)

,2000,_CONSTR,_RES).

get_time(Tend).

