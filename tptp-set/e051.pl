use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET076+1.p
% If both members of a pair belong to a set, the pair is a subset
X in Z & Y in Z & nsubset({X,Y},Z)

,2000,_CONSTR,_RES).

get_time(Tend).

