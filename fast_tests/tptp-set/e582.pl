use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET735+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Property of mappings
pfun(F1) & dom(F1,A) & ran(F1,M1) & subset(M1,B) & pfun(F2) & dom(F2,A) & ran(F2,M2) & subset(M2,B) & pfun(G) & dom(G,B) & ran(G,M3) & subset(M3,A) & comp(F1,G,M4) & id(A,M4) & comp(F2,G,M4) & rimg(F1,A,M5) & rimg(F2,A,M5) & F1 neq F2

,2000,_CONSTR,_RES).

get_time(Tend).

