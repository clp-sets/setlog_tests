use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% overrideAssociates
oplus(Q,R,N1) & oplus(N1,S,N2) & oplus(R,S,N3) & noplus(Q,N3,N2)
,2000,_CONSTR,_RES).

get_time(Tend).


