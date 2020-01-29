use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p.81 (XVIII)
R = S & inv(R,IR) & inv(S,IS) & IR neq IS

,2000,_CONSTR,_RES).

get_time(Tend).

