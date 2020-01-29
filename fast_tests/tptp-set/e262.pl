use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET311-6.p
% Range property 1
inters(X,cp(U1,U2),M1) & ran(X,M2) & nsubset(M1,cp(U1,M2))

,2000,_CONSTR,_RES).

get_time(Tend).

