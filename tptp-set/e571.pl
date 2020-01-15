use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET724+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If GoF = HoF and F is surjective, then G = H
pfun(F) & subset(F,cp(A,B)) & dom(F,A) & pfun(G) & subset(G,cp(B,C)) & dom(G,B) & pfun(H) & subset(H,cp(B,C)) & dom(H,B) & comp(F,G,M1) & comp(F,H,M1) & ran(F,B) & G neq H

,2000,_CONSTR,_RES).

get_time(Tend).

