use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET017+1.p
% Left cancellation for unordered pairs
{X,Y} = {X,Z} & Y neq Z

,2000,_CONSTR,_RES).

get_time(Tend).

