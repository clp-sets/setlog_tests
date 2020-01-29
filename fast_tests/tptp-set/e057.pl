use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET083+1.p
% A singleton set is determined by its element
{X} = {Y} & X neq Y

,2000,_CONSTR,_RES).

get_time(Tend).

