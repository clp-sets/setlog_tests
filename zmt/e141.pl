use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% overrideEverything
dom(Q,N1) & dom(R,N2) & subset(N1,N2) & noplus(Q,R,R)
,2000,_CONSTR,_RES).

get_time(Tend).

