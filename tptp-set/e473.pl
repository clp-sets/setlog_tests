use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET621+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : (X sym\ Y) \ Z = (X \ (Y U Z)) U (Y \ (X U Z))
symdiff(B,C,M1) & ndiff(M1,D,M2) & un(C,D,M3) & diff(B,M3,M4) & un(B,D,M5) & diff(C,M5,M6) & un(M4,M6,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

