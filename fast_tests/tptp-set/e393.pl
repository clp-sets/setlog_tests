use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET492-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Diagonalization lemma 2
X in M3 & id(U,M1) & inters(Y,M1,M2) & dom(M2,M3) & [X,X] nin Y

,2000,_CONSTR,_RES).

get_time(Tend).

