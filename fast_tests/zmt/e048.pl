use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% dresDres
dres(T,R,N1) & dres(S,N1,N2) & inters(S,T,N3) & ndres(N3,R,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

