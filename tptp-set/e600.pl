use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET758+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The image of the inverse image of Y is a subset of Y
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(Y,B) & invimg(F,Y,M2) & rimg(F,M2,M3) & nsubset(M3,Y) 

,2000,_CONSTR,_RES).

get_time(Tend).

