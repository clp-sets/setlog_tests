use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET534-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : The range of Z is the class of applications of Z to Z's domain 2
apply(Z,M2,Y1) & Y in M1 & pfun(Z) & ran(Z,M1) & domain(Z,U,Y2,M2) & Y1 neq Y2

,2000,_CONSTR,_RES).

get_time(Tend).

