use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET458-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary to identity is a function
id(U,M1) & restrict(M1,X,Y,M2) & npfun(M2)

,2000,_CONSTR,_RES).

get_time(Tend).

