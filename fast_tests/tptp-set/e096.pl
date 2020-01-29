use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET143+3.p
% Associativity of intersection
inters(B,C,M1) & inters(M1,D,M2) & inters(C,D,M3) & ninters(B,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

