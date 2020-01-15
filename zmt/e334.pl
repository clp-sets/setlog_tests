use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ndresId
id(T,N1) & dares(S,N1,N2) & diff(T,S,N3) & id(N3,N2) & T neq {} & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

