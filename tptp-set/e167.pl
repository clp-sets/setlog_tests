use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET213-6.p
% Corollary 4 to cross product product monotonicity
un(Y,Z,M1) & nsubset(cp(X,Z),cp(X,M1))

,2000,_CONSTR,_RES).

get_time(Tend).

