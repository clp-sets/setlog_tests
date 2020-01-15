use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% rresEverything
ran(R,N1) & inters(S,N1,{}) & nrres(R,S,{})
,2000,_CONSTR,_RES).

get_time(Tend).

