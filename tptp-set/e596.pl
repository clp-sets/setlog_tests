use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET754+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : C is a subset of the inverse image of the image of C
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,A) & rimg(F,C,M2) & invimg(F,M2,M3) & nsubset(C,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

