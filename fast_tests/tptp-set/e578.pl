use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET731+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : Property of restriction 2
% Version  : [Pas99] axioms.
delay(pfun(F) & dom(F,A) & ran(F,M1) & subset(M1,B) & subset(C,B),false) & rimg(F,A,C) & dres(A,F,G) & nran(G,C)

,2000,_CONSTR,_RES).

get_time(Tend).

