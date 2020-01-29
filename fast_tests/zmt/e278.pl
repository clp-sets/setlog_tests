use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domId
id(S,N1) & dom(N1,S) & S neq{}
,2000,_CONSTR,_RES).

get_time(Tend).

