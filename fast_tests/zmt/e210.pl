use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inversesEqual 1
inv(Q,N1) & inv(R,N2) & N1 = N2 & Q = R & Q neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

