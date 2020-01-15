use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET566-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Compatible function property 4
compatible(Xh1,Xf1,Xf2) & compatible(Xh2,Xf2,Xf3) & comp(Xh1,Xh2,M1) & (dom(Xf1,M2) & dom(M2,M3) & ndom(M1,M3) or ran(M1,M4) & dom(Xf3,M5) & dom(M5,M6) & nsubset(M4,M6))

,2000,_CONSTR,_RES).

get_time(Tend).

