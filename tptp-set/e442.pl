use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET394-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Composition property 2
id(U1,M1) & dom(X,M2) & restrict(M1,M2,U2,M3) & inv(X,M4) & comp(X,M4,M5) & nsubset(M3,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

