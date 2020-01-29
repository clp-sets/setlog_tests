use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET275-6.p
% Corollary 1 to domain property 4
restrict(X,Y,Z,M1) & dom(M1,M2) & dom(X,M3) & inters(M3,Y,M4) & nsubset(M2,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

