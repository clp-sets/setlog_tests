use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET210-6.p
% Corollary 1 to cross product product monotonicity
un(X,Y,M1) & nsubset(cp(X,Z),cp(M1,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

