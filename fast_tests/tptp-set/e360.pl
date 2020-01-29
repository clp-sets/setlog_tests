use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET464-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Class image under identity
inters(X,Y,M3) & id(U,M1) & restrict(M1,X,X,M2) & nrimg(M2,Y,M3) & (subset(X,U) or subset(Y,U))

,2000,_CONSTR,_RES).

get_time(Tend).

