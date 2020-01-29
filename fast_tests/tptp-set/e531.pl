use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET690+4 : TPTP v7.0.0. Released v2.2.0. (1)
% Problem  : Property of union and intersection
inters(A,B,M1) & un(M1,C,M2) & un(B,C,M3) & inters(A,M3,M2) & nsubset(C,A)

,2000,_CONSTR,_RES).

get_time(Tend).

