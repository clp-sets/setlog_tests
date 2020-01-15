use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET166-6.p
% Members of union 1
un(Y,Z,M1) & X in M1 & X nin Y & X nin Z

,2000,_CONSTR,_RES).

get_time(Tend).

