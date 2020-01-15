use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET588+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X (= Y, then X \ Z (= Y \ Z
subset(B,C) & diff(B,D,M1) & diff(C,D,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

