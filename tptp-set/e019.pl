use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET019-3.p
% Two sets that contain one another are equal
subset(B,A) & subset(A,B) & A neq B

,2000,_CONSTR,_RES).

get_time(Tend).

