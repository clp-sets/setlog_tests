use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET252-6.p
% Restriction property 3
restrict(X,Y,Z,M1) & nsubset(M1,X)

,2000,_CONSTR,_RES).

get_time(Tend).

