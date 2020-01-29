use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pairInId 2
P1 = P2 & P1 in X & id(X,N1) & [P1,P2] nin N1
,2000,_CONSTR,_RES).

get_time(Tend).

