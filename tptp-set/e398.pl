use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET500-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Diagonalization property 1
id(U,M1) & inters(Xr,M1,M2) & ran(M2,M3) & un(M3,M4,U) & disj(M3,M4) & diagonalize(Xr,U,M5) & M4 neq M5

,2000,_CONSTR,_RES).

get_time(Tend).

