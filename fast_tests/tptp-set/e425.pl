use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET584+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X (= Y, then X U Z (= Y U Z
subset(B,C) & un(B,C,M1) & un(C,D,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

