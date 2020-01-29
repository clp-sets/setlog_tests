use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET475-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Restricted domain
id(U,M1) & un(X,M1,M2) & subset(cp(Y,Y),M2) & restrict(X,Y,Y,M3) & ndom(M3,Y) & M4 in Y & {M4} neq Y & set(Y)

,2000,_CONSTR,_RES).

get_time(Tend).

