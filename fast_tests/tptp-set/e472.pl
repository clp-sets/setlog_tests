use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET620+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X sym\ Y = (X U Y) \ X ^ Y
symdiff(B,C,M1) & un(B,C,M2) & inters(B,C,M3) & ndiff(M2,M3,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

