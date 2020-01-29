use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL045+1.p
% An unfold law
inv(X0,M1) & comp(X0,M1,M2) & comp(M2,X0,M3) & nsubset(X0,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

