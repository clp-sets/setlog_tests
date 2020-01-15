use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ndresId
id(T,N1) & dares(S,N1,N2) & diff(T,S,N3) & nid(N3,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

