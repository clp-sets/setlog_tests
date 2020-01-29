use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET606+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X \ X ^ Y = X \ Y
inters(B,C,M1) & diff(B,M1,M2) & ndiff(B,C,M2)

,2000,_CONSTR,_RES).

get_time(Tend).
