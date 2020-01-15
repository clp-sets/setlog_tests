use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET470-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary to sets with one member
M2 in X & {M2} neq X & X neq {} & delay(subset(cp(X,X),M1),false) & id(U,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

