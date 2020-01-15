use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET133-6.p
% Corollary 1 to membership in unordered triple
U in X & V in X & W in X & nsubset({U/{V/{W/{}}}},X)

,2000,_CONSTR,_RES).

get_time(Tend).

