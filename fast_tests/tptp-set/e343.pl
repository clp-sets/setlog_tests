use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET442-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Restriction of function
pfun(Xf) & nrestrict(Xf,U1,U2,Xf) & subset(Xf,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

