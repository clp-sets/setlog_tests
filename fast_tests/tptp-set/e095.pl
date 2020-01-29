use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET142-6.p
% Lexical ordering in unordered triples is irrelevant
{X/{Y/{Z/{}}}} neq {Y/{X/{Z/{}}}}

,2000,_CONSTR,_RES).

get_time(Tend).

