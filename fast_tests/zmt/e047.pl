use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rresId B
id(S,N1) & inters(S,T,N3) & id(N3,N2) & nrres(N1,T,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

