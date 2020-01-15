use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET710+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Associativity of composition
comp(F,M6,M5) & pfun(F) & delay(dom(F,A) & ran(F,M1) & subset(M1,B),false) & pfun(G) & delay(dom(G,B) & ran(G,M2) & subset(M2,C),false) & pfun(H) & delay(dom(H,C) & ran(H,M3) & subset(M3,D),false) & comp(F,G,M4) & ncomp(M4,H,M5) & comp(G,H,M6)


,2000,_CONSTR,_RES).

get_time(Tend).

