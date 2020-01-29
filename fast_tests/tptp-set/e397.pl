use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET496-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Diagonalization alternate definition 3
Z in U & diagonalize(Xr,U,M1) & Z nin M1 & [Z,Z] nin Xr

,2000,_CONSTR,_RES).

get_time(Tend).

