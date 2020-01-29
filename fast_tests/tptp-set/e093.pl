use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET140-6.p
% Triple reduction 2
{X/{Y/{X/{}}}} neq {X,Y}

,2000,_CONSTR,_RES).

get_time(Tend).

