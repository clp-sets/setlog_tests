use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET025+1 : TPTP v7.0.0. Bugfixed v5.4.0.
% Problem  : An ordered pair is a set
sop(A,M1) & nset(M1)

,2000,_CONSTR,_RES).

get_time(Tend).

