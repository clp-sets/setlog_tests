use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET757+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Inverse image intersection equals intersection inverse images
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(X,B) & subset(Y,B) & invimg(F,X,M2) & invimg(F,Y,M3) & inters(X,Y,M4) & invimg(F,M4,M5) & ninters(M2,M3,M5) 

,2000,_CONSTR,_RES).

get_time(Tend).

