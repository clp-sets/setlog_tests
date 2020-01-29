use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET593+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X (= Y U Z, then X \ Y (= Z and X \ Z (= Y
un(C,D,M1) & subset(B,M1) & diff(B,C,M2) & diff(B,D,M3) & (nsubset(M2,D) or nsubset(M3,C))

,2000,_CONSTR,_RES).

get_time(Tend).

