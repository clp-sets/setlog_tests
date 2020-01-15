use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET715+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : The composition of F and its inverse is the identity
t1to1(F,A,B) & inv(F,M1) & id(B,M2) & ncomp(M1,F,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

