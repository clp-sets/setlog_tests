use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET545-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Application special case 1
X in U1 & nrimg(cp(U1,U2),{X},U2)

,2000,_CONSTR,_RES).

get_time(Tend).

