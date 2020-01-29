use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rresElimination
ran(R,N1) & subset(N1,S) & rres(R,S,R) & R neq {} & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

