use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET060+1.p
% Nothing in the intersection of a set and its complement
un(X,M1,U) & disj(X,M1) & inters(M1,X,M2) & Y in M2

,2000,_CONSTR,_RES).

get_time(Tend).

