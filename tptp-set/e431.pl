use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET589+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X (= Y and Z (= V, then X \ V (= Y \ Z
subset(B,C) & subset(D,E) & diff(B,E,M1) & diff(C,D,M2) & nsubset(M1,M2)



,2000,_CONSTR,_RES).

get_time(Tend).

