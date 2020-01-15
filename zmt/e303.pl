use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% compIdLeft
id(S,N1) & comp(N1,R,N2) & dres(S,R,N2) & S neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

