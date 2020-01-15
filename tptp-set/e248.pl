use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET297-6.p
% Range of inverse
inv(X,M1) & ran(M1,M2) & ndom(X,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

