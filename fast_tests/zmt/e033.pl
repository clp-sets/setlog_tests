use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% compInPfun
pfun(F) & pfun(G) & comp(F,G,N1) & npfun(N1)
,2000,_CONSTR,_RES).

get_time(Tend).

