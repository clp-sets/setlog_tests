use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET899+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : subset(A,B) => ( in(C,A) | subset(A,difference(B,singleton(C))) )
subset(A,B) & C nin A & diff(B,{C},M1) & nsubset(A,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

