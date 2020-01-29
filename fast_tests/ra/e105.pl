use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
inv(R,N1) & inters(R,N1,{}) & id(A,N2) & ninters(R,N2,{})
,2000,_CONSTR,_RES).

get_time(Tend).

