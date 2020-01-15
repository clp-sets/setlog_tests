use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET102+1.p
% Ordered pair member of ordered pair
{X,{Y}} nin {{X},{X,{Y}}}

,2000,_CONSTR,_RES).

get_time(Tend).

