use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET433-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Function alternate definition 2
npfun(X) & inv(X,M1) & comp(M1,X,M2) & id(U,M3) & [M4,M5] in M2 & [M4,M5] nin M3 & rimg(M1,{M4},M6) & domain(X,M6,M5,M7) & [M7,M4] nin X
,2000,_CONSTR,_RES).

get_time(Tend).

