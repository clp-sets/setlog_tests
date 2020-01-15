use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET622+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X \ (Y sym\ Z) = (X \ (Y U Z)) U X ^ Y ^ Z
symdiff(C,D,M1) & ndiff(B,M1,M2) & un(C,D,M3) & diff(B,M3,M4) & inters(B,C,M5) & inters(M5,D,M6) & un(M4,M6,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

