use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET561-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Compatible function property 1
operation(Xf1) & compatible(Xh,Xf1,Xf2) & dom(Xh,M1) & [X,Y] in cp(M1,M1) & apply(Xf1,[X,Y],M2) & M2 nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

