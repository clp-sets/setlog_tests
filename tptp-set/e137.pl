use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET185+3.p
% If X is a subset of  Y, then the union of X and Y is Y
subset(B,C) & nun(B,C,C)

,2000,_CONSTR,_RES).

get_time(Tend).

