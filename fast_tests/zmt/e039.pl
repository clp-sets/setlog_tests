use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ranRres
rres(R,S,N1) & nran(N1,N2) & ran(R,N3) & inters(N3,S,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

