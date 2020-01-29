use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pairInInv 1
inv(R,N1) & [X,Y] in N1 & [Y,X] nin R
,2000,_CONSTR,_RES).

get_time(Tend).

