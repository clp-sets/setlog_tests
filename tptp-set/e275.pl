use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET322-6.p
% Range property 6
dom(Z,M1) & X in M1 & range(Z,X,U2,M2) & ran(Z,M3) & M2 nin M3

,2000,_CONSTR,_RES).

get_time(Tend).

