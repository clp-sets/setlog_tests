use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET493-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Diagonalization corollary
X in M3 & napply(Y,X,X) & id(U,M1) & dom(M2,M3) & pfun(Y) & inters(Y,M1,M2) 

,2000,_CONSTR,_RES).

get_time(Tend).

