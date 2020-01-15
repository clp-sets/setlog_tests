use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET733+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If GoF is the identity, then F is injective
delay(dom(F,A) & dom(G,B),false) & subset(F,cp(A,B)) & pfun(F) & subset(G,cp(B,A)) & pfun(G) & comp(F,G,M3) & id(A,M3) & nbij(F)

,2000,_CONSTR,_RES).

get_time(Tend).

