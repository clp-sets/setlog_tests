use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET723+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If FoG = FoH and F is injective, then G = H
G neq H & subset(F,cp(B,C)) & dom(F,B) & delay(pfun(G),false) & subset(G,cp(A,B)) & dom(G,A) & delay(pfun(H),false) & subset(H,cp(A,B)) & dom(H,A) & comp(G,F,M1) & comp(H,F,M1) & pfun(F) & inv(F,M2) & pfun(M2)

,2000,_CONSTR,_RES).

get_time(Tend).

