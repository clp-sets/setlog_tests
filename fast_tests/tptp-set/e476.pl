use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET624+3 : TPTP v7.0.0. Released v2.2.0. (1)
% Problem  : X intersects Y U Z iff X intersects Y or X intersects Z
un(C,D,M1) & ndisj(B,M1) & disj(B,C) & disj(B,D)

,2000,_CONSTR,_RES).

get_time(Tend).

