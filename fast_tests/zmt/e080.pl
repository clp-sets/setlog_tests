use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ndresNdres
dares(T,R,N1) & dares(S,N1,N2) & un(S,T,N3) & ndares(N3,R,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

