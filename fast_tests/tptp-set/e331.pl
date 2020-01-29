use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET430-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : In a single-valued class, each image is a singleton
pfun(X) & dom(X,M1) & Z in M1 & rimg(X,{Z},M2) & M3 in M2 & {M3} neq M2

,2000,_CONSTR,_RES).

get_time(Tend).

