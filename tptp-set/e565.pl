use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET718+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The composition of one-to-one  mappings is one-to-one
pfun(F) & inv(F,M1) & pfun(M1) &
pfun(G) & inv(G,M2) & pfun(M2) &
comp(F,G,M3) & (npfun(M3) or inv(M3,M4) & npfun(M4))
or
% without delay it take 2 or 3 more seconds
pfun(F) & dom(F,A) & ran(F,B) & delay(inv(F,M1) & pfun(M1) &
pfun(G) & dom(G,B) & ran(G,C) & inv(G,M2) & pfun(M2) &
comp(F,G,M3),false) & (ndom(M3,A) or nran(M3,C))

,2000,_CONSTR,_RES).

get_time(Tend).

