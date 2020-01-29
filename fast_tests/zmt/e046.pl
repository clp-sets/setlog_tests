use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rresId A
id(S,N1) & rres(N1,T,N2) & inters(S,T,N3) & nid(N3,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

