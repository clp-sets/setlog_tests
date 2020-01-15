use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET766+4 : TPTP v7.0.0. Released v2.2.0.
% Problem  : A member belongs to its equivalence class
equivalence(R,E) & E = {A/E1} & A nin E1 & eclass(R,E,A,M1) & A nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

