use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET752+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The image of union is equal to the union of images
pfun(F) & dom(F,A1) & ran(F,M1) & subset(M1,B) & subset(X,A) & subset(Y,A) & un(X,Y,M2) & rimg(F,X,M3) & rimg(F,Y,M4) & nun(M3,M4,M5) & rimg(F,M2,M5) 

,2000,_CONSTR,_RES).

get_time(Tend).

