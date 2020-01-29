use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET722+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If the composition of F and G is surjective, then F is surjective
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & pfun(G) & dom(G,B) & ran(G,M2) & subset(M2,C) & comp(F,G,M3) & ran(M3,C) & nran(G,C)

,2000,_CONSTR,_RES).

get_time(Tend).

