use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET753+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Image of intersection is a subset of intersection of images
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(X,A) & subset(Y,A) & inters(X,Y,M2) & rimg(F,X,M3) & rimg(F,Y,M4) & inters(M3,M4,M5) & rimg(F,M2,M6) & nsubset(M6,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

