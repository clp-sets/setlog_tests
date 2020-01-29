use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET805+4 : TPTP v7.0.0. Released v3.2.0.
% Domain   : Set Theory (Order relations)
% Problem  : Order relation on E is an order relation on a subset of E
subset(R,cp(E,E)) & comp(R,R,M1) & subset(M1,R) & id(E,M2) & subset(M2,R) & inv(R,M3) & inters(R,M3,M4) & subset(M4,M2) & subset(X,E) & 
dres(X,R,M41) & rres(M41,X,M5) & 
(comp(M5,M5,M6) & nsubset(M6,M5) 
 or id(X,M7) & nsubset(M7,M5)
 or id(X,M8) & inv(M5,M9) & inters(M5,M9,M10) & nsubset(M10,M8))

,2000,_CONSTR,_RES).

get_time(Tend).

