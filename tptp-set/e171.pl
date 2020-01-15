use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET217-6.p
% Corollary 8 to cross product product monotonicity
inters(Y,Z,M1) & nsubset(cp(X,M1),cp(X,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

