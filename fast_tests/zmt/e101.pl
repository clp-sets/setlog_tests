use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inversesEqual 2
inv(Q,N1) & inv(R,N2) & Q = R & N1 neq N2
,2000,_CONSTR,_RES).

get_time(Tend).

