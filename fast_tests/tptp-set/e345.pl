use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET444-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Function property 1
pfun(X) & pfun(Y) & dom(X,M1) & dom(Y,M2) & inters(M1,M2,{}) & un(X,Y,M3) & npfun(M3)

,2000,_CONSTR,_RES).

get_time(Tend).

