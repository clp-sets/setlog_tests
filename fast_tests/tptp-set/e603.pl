use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET761+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Intersection of images
% the following predicates aren't necessary for the refutation
dom(F,A) & ran(F,M1) & subset(M1,B) & subset(X,A) & subset(Y,A) &
% all the following are necessary
bij(F) & pfun(F) & fimg(F,X,M3) & fimg(F,Y,M4) & fimg(F,M2,M5) & ninters(M3,M4,M5) & inters(X,Y,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

