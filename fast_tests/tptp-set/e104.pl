use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET151-6.p
% Complement of null class is universal class
un({},M1,U) & disj({},M1) & M1 neq U

,2000,_CONSTR,_RES).

get_time(Tend).

