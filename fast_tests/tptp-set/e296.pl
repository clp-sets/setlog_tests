use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET381-6.p
% Relation property 2
subset(X,cp(U1,U2)) & dom(X,M1) & ran(X,M2) & nsubset(X,cp(M1,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

