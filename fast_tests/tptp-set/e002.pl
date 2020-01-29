use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET002-1.p
% Idempotency of union
un(A,A,AUA) & AUA neq A

,2000,_CONSTR,_RES).

get_time(Tend).

