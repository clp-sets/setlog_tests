use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET169+3.p
% Intersection distributes over union
un(C,D,M1) & inters(B,M1,M2) & inters(B,C,M3) & inters(B,D,M4) & nun(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

