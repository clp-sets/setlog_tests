use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET168-6.p
% Members of union 3
X in Z & un(Y,Z,M1) & X nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

