use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET717+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The composition of surjective mappings is surjective
pfun(F) & delay(dom(F,A) & ran(F,B),false) & pfun(G) & delay(dom(G,B) & ran(G,C),false) & comp(F,G,M1) & nran(M1,C)

,2000,_CONSTR,_RES).

get_time(Tend).

