use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET601+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X ^ Y U Y ^ Z U Z ^ X = (X U Y) ^ (Y U Z) ^ (Z U X)
inters(B,C,M1) & inters(C,D,M2) & un(M1,M2,M3) & inters(D,B,M4) & un(M3,M4,M5) & 
un(B,C,M6) & un(C,D,M7) & inters(M6,M7,M8) & un(D,B,M9) & ninters(M8,M9,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

