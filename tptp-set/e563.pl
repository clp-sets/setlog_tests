use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET716+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The composition of injective mappings is injective
pfun(F) & delay(dom(F,A) & ran(F,M1) & subset(M1,B),false) & pfun(G) & delay(dom(G,B) & ran(G,M2) & subset(M2,C),false) & bij(F) & bij(G) & comp(F,G,M3) & nbij(M3)

,2000,_CONSTR,_RES).

get_time(Tend).

