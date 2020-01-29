use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% compInRel
rel(Q) & rel(R) & comp(Q,R,N1) & rel(N1) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

