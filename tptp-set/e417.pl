use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET564-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary 1 to compatible function property 3
compatible(Xh1,Xf1,Xf2) & compatible(Xh2,Xf2,Xf3) & comp(Xh1,Xh2,M1) & dom(M1,M2) & ndom(Xh1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

