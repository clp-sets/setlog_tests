use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET056+1.p
% Expanded equality definition
X = Y & (U in X & U nin Y or W nin X & W in Y)

,2000,_CONSTR,_RES).

get_time(Tend).

