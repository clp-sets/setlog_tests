use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% dresId B
id(T,N1) & inters(S,T,N3) & id(N3,N2) & ndres(S,N1,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

