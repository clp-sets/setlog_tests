use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% converse_idempotence axiom
inv(X0,M1) & ninv(M1,X0)

,2000,_CONSTR,_RES).

get_time(Tend).

