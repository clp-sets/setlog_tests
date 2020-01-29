use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET612+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X \ (Y U Z) = (X \ Y) ^ (X \ Z)
un(C,D,M1) & diff(B,M1,M2) & diff(B,C,M3) & diff(B,D,M4) & ninters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

