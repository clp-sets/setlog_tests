use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% compIdRight
id(S,N1) & comp(R,N1,N2) & rres(R,S,N2) & S neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

