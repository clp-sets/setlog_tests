use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET152-6.p
% Complement of universal class is null class
un(U,M1,U) & disj(U,M1) & M1 neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

