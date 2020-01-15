use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET548-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Application property 16
napply(X,U,M3) & pfun(X) & inters(Y,X,M1) & dom(M1,M2) & U in M2 & apply(M1,U,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

