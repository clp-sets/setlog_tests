use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% invId
id(S,N1) & inv(N1,N1) & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

