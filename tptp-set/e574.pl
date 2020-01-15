use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET727+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If GoF and FoH are identities, then inverse(F) = H
delay(ran(F,M1) & subset(M1,B) & ran(G,M2) & subset(M2,A) & ran(H,M3) & subset(M3,A),false) & pfun(F) & dom(F,A) & pfun(G) & dom(G,B) & pfun(H) & dom(H,B) & id(B,M4) & comp(G,F,M4) & id(A,M5) & comp(F,H,M5) & ninv(F,H)

,2000,_CONSTR,_RES).

get_time(Tend).

