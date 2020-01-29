use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET437-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Subclass of function is a function, part 2
pfun(X) & inters(Y,X,M1) & npfun(M1)

,2000,_CONSTR,_RES).

get_time(Tend).

