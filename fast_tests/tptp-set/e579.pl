use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET732+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Property of restriction 3
% Version  : [Pas99] axioms.
% English  : If F is a mapping from A to B,and G equal to F on A and
%            C =image2(F,A) and F is injective, then G is one-to-one.
% inv G isn't a function
dres(A,F,G) & bij(F) & inv(G,M2) & npfun(M2) & delay(rimg(F,A,C) & pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,B),false)
or
% dom G isn't A
dom(F,A) & dres(A,F,G) & ndom(G,A) & delay(bij(F) & rimg(F,A,C) & pfun(F) & ran(F,M1) & subset(M1,B) & subset(C,B),false)
or
% ran G isn't C
rimg(F,A,C) & dres(A,F,G) & nran(G,C) & delay(bij(F) & inv(G,M2) & pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,B),false)
or
% G isn't a function
pfun(F) & dres(A,F,G) & npfun(G) & delay(bij(F) & rimg(F,A,C) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,B),false)

,2000,_CONSTR,_RES).

get_time(Tend).

