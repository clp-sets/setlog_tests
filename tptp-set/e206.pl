use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET253-6.p
% Restriction property 4
restrict(X,Y,Z,M1) & nsubset(M1,cp(Y,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

