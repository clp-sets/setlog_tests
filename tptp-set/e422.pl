use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET580+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : x is in X sym Y iff x is in X iff x is not in Y
symdiff(C,D,M1) & B in M1 & (B nin C or B in D) & (B nin D or B in C) & 
((B in C & B nin D) or (B in D & B nin C)) & B nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

