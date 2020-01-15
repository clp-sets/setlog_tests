use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% invCap (1)
inters(Q,R,N1) & inv(N1,N2) & inv(Q,N3) & inv(R,N4) & ninters(N3,N4,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

