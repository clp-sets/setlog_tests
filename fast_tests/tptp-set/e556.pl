use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET709+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The composition of mappings is a mapping
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & pfun(G) & dom(G,B) & ran(G,M2) & comp(F,G,M3) & (npfun(M3) or ndom(M3,A) or ran(M3,M4) & nsubset(M4,C))

,2000,_CONSTR,_RES).

get_time(Tend).

