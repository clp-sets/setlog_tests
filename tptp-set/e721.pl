use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET560-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Compatible functions alternate definition 3
pfun(Xh) & dom(Xh,M1) & dom(Xf1,M2) & cp(M1,M1) = M2 & ran(Xh,M3) & dom(Xf2,M4) & subset(cp(M3,M3),M4) & (npfun(Xh) or ndom(M2,M1) or dom(M4,M5) & nsubset(M3,M5))

,2000,_CONSTR,_RES).

get_time(Tend).

