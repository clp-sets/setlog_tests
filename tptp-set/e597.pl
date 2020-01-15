use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET755+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If X is a subset of Y, then f-1(X) is a subset of f-1(Y)
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(X,B) & subset(Y,B) & subset(X,Y) & invimg(F,X,M2) & invimg(F,Y,M3) & nsubset(M2,M3) 

,2000,_CONSTR,_RES).

get_time(Tend).

