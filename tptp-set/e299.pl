use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET384-6.p
% Corollary 1 to relation property 3
inv(X,M1) & inv(M1,M2) & ninv(M2,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

