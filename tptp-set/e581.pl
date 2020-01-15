use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET734+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If GoF is the identity, then G is surjective
delay(pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & pfun(G) & dom(G,B),false) & ran(G,M2) & subset(M2,A) & comp(F,G,M3) & id(A,M3) & nran(G,A)

,2000,_CONSTR,_RES).

get_time(Tend).

