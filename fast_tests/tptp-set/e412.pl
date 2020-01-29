use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET543-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary to application property 10
pfun(Xf) & X in Y & dom(Xf,M1) & X in M1 & apply(Xf,X,M2) & rimg(Xf,Y,M3) & M2 nin M3

,2000,_CONSTR,_RES).

get_time(Tend).

