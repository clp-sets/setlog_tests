use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET760+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Composition of images 2
pfun(F) & dom(F,A) & ran(F,B) & subset(Y,B) & invimg(F,Y,M1) & nrimg(F,M1,Y) 

,2000,_CONSTR,_RES).

get_time(Tend).

