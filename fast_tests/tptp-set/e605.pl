use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET763+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : If the image of X is empty then X is empty
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(X,A) & rimg(F,X,{}) & X neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

