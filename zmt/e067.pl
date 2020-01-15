use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% invCap (2)
inters(R,S,M1) & ninv(M1,M2) & inv(R,M3) & inv(S,M4) & inters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

