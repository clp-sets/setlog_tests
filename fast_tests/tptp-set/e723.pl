use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET562-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Compatible function property 2
operation(Xf2) & compatible(Xh,Xf1,Xf2) & dom(Xh,M1) & [X,Y] in cp(M1,M1) & apply(Xh,X,M2) & apply(Xh,Y,M3) & dom(Xf2,M4) & [M2,M3] nin M4

,2000,_CONSTR,_RES).

get_time(Tend).

