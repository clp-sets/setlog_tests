use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET085-6.p
% Unordered pair that is a singleton
{Y,Z} = {X} & X neq Y & X neq Z

,2000,_CONSTR,_RES).

get_time(Tend).

