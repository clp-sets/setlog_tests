use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET616+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X \ Y = Y \ X, then X = Y
diff(B,C,M1) & diff(C,B,M1) & B neq C

,2000,_CONSTR,_RES).

get_time(Tend).

