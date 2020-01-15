use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET625+3 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Set Theory
% Problem  : If X intersects Y and Y is a subset of Z, then X intersects Z
ndisj(B,C) & subset(C,D) & disj(B,D)

,2000,_CONSTR,_RES).

get_time(Tend).

