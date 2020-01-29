use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET435-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Function alternate definition 4
npfun(X) & inv(X,M1) & comp(M1,X,M2) & [M3,M4] in M2 & id(U,M5) & [M3,M4] nin M5 & M3 = M4 & dom(M2,M6) & ran(M2,M7) & subset(M6,U) & subset(M7,U)

,2000,_CONSTR,_RES).

get_time(Tend).

