use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Symmetric ERROR STACK
inv(R,R) & [X,Y] in R & [Y,X] nin R

,2000,_CONSTR,_RES).

get_time(Tend).

