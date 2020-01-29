use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET501-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Diagonalization property 2
inv(Xr,M1) & comp(Xs,M1,M2) & diagonalize(M2,U,M3) & inters(Xr,Xs,M4) & dom(M4,M5) & un(M5,M6,U) & disj(M5,M6) & M3 neq M6

,2000,_CONSTR,_RES).

get_time(Tend).

