use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET121-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary 3 to components of equal ordered pairs being equal
nset(Y) & first({{X},{X,Y}},M1) & M1 neq {{X},{X,Y}}

,2000,_CONSTR,_RES).

get_time(Tend).

