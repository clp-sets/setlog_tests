use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET751+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If X is a subset of Y, then the image f(X) is a subset of f(Y)
pfun(F) & dom(F,A1) & ran(F,M1) & subset(M1,B) & subset(X,A) & subset(Y,A) & subset(X,Y) & rimg(F,X,M2) & rimg(F,Y,M3) & nsubset(M2,M3) 

,2000,_CONSTR,_RES).

get_time(Tend).

