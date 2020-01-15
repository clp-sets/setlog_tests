use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domNdres
dares(S,R,N1) & ndom(N1,N2) & dom(R,N3) & diff(N3,S,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

