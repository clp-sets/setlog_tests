use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET542-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Corollary to application property 9
apply(Xf,M2,Y1) & Y in M1 & fimg(Xf,X,M1) & domain(Xf,X,Y2,M2) & Y1 neq Y2

,2000,_CONSTR,_RES).

get_time(Tend).

