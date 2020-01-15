use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET009-1.p
% If X is a subset of Y, then Z \ Y is a subset of Z \ X
subset(D,A) & diff(B,A,Bda) & diff(B,D,Bdd) & nsubset(Bda,Bdd)

,2000,_CONSTR,_RES).

get_time(Tend).

