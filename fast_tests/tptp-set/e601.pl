use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET759+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Composition of images 1
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & bij(F) & subset(X,A) & rimg(F,X,M2) & invimg(F,M2,M3) & M3 neq X 

,2000,_CONSTR,_RES).

get_time(Tend).

