use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET737+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Problem on composition of mappings 2
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & pfun(G) & dom(G,B) & ran(G,M2) & subset(M2,C) & pfun(H) & dom(H,C) & ran(H,M3) & subset(M3,A) & comp(F,G,M4) & comp(M4,H,M5) & bij(M5) & comp(G,H,M6) & comp(M6,F,M7) & bij(M7) & comp(H,F,M8) & comp(M8,G,M9) & ran(M9,C) & (nran(G,C) or inv(G,M10) & npfun(M10))

,2000,_CONSTR,_RES).

get_time(Tend).

