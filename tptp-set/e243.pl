use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET292-6.p
% Inverse of null class is the null class
ninv({},{})

,2000,_CONSTR,_RES).

get_time(Tend).

