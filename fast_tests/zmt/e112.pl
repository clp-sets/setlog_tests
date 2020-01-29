use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% invDres
dres(S,R,N1) & inv(N1,N2) & inv(R,N3) & nrres(N3,S,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

