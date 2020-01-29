use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET443-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Difference of functions is a function
pfun(X) & pfun(Y) & un(X,M1,cp(U1,U2)) & disj(X,M1) & inters(M1,Y,M2) & npfun(M2)

,2000,_CONSTR,_RES).

get_time(Tend).

