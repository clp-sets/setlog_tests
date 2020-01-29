use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET474-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Lemma 2 to restricted domain
id(U1,M1) & un(X,M1,M2) & subset(cp(Y,Y),M2) & restrict(X,Y,Y,M3) & ndom(M3,Y) & nsubset(cp(Y,Y),M1)

,2000,_CONSTR,_RES).

get_time(Tend).

