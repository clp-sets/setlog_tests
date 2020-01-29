use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Transitive OK
comp(R,R,N) & subset(N,R) & [X,Y] in R & [Y,Z] in R & [X,Z] nin R

,2000,_CONSTR,_RES).

get_time(Tend).

