use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET743+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Problem on composition of mappings 8
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & pfun(G) & dom(G,B) & ran(G,M2) & subset(M2,C) & pfun(H) & dom(H,C) & ran(H,M3) & subset(M3,A) & comp(F,G,M4) & t1to1(M4,A,C) & comp(G,H,M6) & t1to1(M6,B,A) & (nran(G,C) or inv(G,M10) & npfun(M10))

,2000,_CONSTR,_RES).

get_time(Tend).

