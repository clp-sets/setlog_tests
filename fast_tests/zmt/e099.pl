use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pairInInv 2
inv(R,N1) & [Y,X] in R & [X,Y] nin N1
,2000,_CONSTR,_RES).

get_time(Tend).

