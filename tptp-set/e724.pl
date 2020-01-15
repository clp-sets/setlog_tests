use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET567-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Compatible function special case
dom({},M1) & dom(M1,M2) & (npfun({}) or cp(M2,M2) neq M1 or ran({},M3) & nsubset(M3,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

