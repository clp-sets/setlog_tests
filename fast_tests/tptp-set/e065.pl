use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET094+1.p
% Property 1 of singletons
M1 in {X} & {M1} = {X} & Y in {X} & M1 neq Y

,2000,_CONSTR,_RES).

get_time(Tend).

