use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET476-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Intersection subclass
id(U,M1) & inters(X,M1,M2) & inv(X,M3) & inters(X,M3,M4) & nsubset(M2,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

