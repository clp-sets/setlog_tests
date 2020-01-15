use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET215-6.p
% Corollary 6 to cross product product monotonicity
inters(X,Y,M1) & nsubset(cp(M1,Z),cp(Y,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

