use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET137-6.p
% Kludge 1 to instantiate variables in unordered triples
U in X & V in X & W in X & {U/{V/{W/{}}}} = {}

,2000,_CONSTR,_RES).

get_time(Tend).

