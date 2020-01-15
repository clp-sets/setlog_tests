use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET610+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : (X U Y) \ Y = X \ Y
un(B,C,M1) & diff(M1,C,M2) & ndiff(B,C,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

