use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET399-6.p
% Left compose with null class
comp({},X,M1) & M1 neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

