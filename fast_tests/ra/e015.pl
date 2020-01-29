use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% The inverse of id is equal to itself
id(A,I) &
inv(I,II) &
I neq II

,2000,_CONSTR,_RES).

get_time(Tend).

