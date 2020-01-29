use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET725+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If GoF and FoH are identities, then F is one-to-one
pfun(F) & id(A,M1) & id(B,M2) & delay(comp(F,M2,F) & comp(G,M1,G) & comp(H,M1,H),false) & dom(F,A) & pfun(G) & dom(G,B) & pfun(H) & dom(H,B) & comp(F,G,M1) & comp(H,F,M2) & (nran(F,B) or inv(F,M3) & npfun(M3))

,2000,_CONSTR,_RES).

get_time(Tend).

