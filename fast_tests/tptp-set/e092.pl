use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET139-6.p
% Triple reduction 1
{X/{X/{Y/{}}}} neq {X,Y}

,2000,_CONSTR,_RES).

get_time(Tend).

