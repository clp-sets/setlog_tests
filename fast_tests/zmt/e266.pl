use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% inverseInPfun
pfun(F) & inv(F,N1) & pfun(N1) & pfun(N1) & F neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

