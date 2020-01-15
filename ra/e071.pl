use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p.82 (XXb)
ninv(cp(A,A),cp(A,A))

,2000,_CONSTR,_RES).

get_time(Tend).

