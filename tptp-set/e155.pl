use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET201+3.p
% Intersection is monotonic
subset(B,C) & subset(D,E) & inters(B,D,M1) & inters(C,E,M2) & nsubset(M1,M2)


,2000,_CONSTR,_RES).

get_time(Tend).

