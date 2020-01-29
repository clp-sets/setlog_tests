use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% cupInRel 2
rel(Q) & rel(R) & un(Q,R,N1) & nrel(N1)
,2000,_CONSTR,_RES).

get_time(Tend).

