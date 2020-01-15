use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET158-6.p
% Corollary to complement axiom
Y in X & un(X,M1,U) & disj(X,M1) & Z in M1 & Y = Z

,2000,_CONSTR,_RES).

get_time(Tend).

