use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET730+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Property of restriction 1
pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,B) & rimg(F,A,C) & dres(A,F,G) & npfun(G)
or
delay(pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,B) & rimg(F,A,C),false) & dres(A,F,G) & ndom(G,A)
or
delay(pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B),false) & subset(C,B) & rimg(F,A,C) & dres(A,F,G) & ran(G,M2) & nsubset(M2,C)

,2000,_CONSTR,_RES).

get_time(Tend).

