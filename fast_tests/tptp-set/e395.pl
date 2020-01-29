use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET494-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Diagonalization alternate definition 1
id(U,M1) & un(X,M2,cp(U,U)) & disj(X,M2) & inters(M2,M1,M3) & ndom(M3,M4) & diagonalize(X,U,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

