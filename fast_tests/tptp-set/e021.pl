use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET021-3.p
% 2nd is unique when x is an ordered pair of sets
prolog_call(nth1(2,[A,B],M1)) & M1 neq B

,2000,_CONSTR,_RES).

get_time(Tend).

