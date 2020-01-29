use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET414-6.p
% Composition distributes over union
un(Y,Z,M1) & comp(X,M1,M2) & comp(X,Y,M3) & comp(X,Z,M4) & nun(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

