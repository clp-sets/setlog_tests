use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET533-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : The range of Z is the class of applications of Z to Z's domain 1
pfun(Z) & dom(Z,M1) & X in M1 & apply(Z,X,M2) & ran(Z,M3) & M2 nin M3

,2000,_CONSTR,_RES).

get_time(Tend).

