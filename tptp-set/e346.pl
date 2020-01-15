use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET445-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary to function property 1
pfun(X) & un(X,{[Y,Z]},M1) & npfun(M1) & dom(X,M2) & Y nin M2

,2000,_CONSTR,_RES).

get_time(Tend).

