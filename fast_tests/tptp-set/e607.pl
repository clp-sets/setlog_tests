use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET765+4 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Set Theory (Equivalence relations)
% Problem  : The restriction of an equivalence relation is an equivalence
subset(R,cp(E,E)) & comp(R,R,M1) & subset(M1,R) & id(E,M2) & subset(M2,R) & inv(R,R) & subset(X,E) & inters(R,cp(X,X),M3) & (comp(M3,M3,M4) & nsubset(M4,M3) or id(X,M5) & nsubset(M5,M3) or ninv(M3,M3))

,2000,_CONSTR,_RES).

get_time(Tend).

