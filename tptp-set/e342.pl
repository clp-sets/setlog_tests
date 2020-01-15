use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET441-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : The intersection of functions is a function
pfun(X) & pfun(Y) & inters(X,Y,M1) & npfun(M1)

,2000,_CONSTR,_RES).

get_time(Tend).

