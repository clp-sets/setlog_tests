use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% id_type 1
id(X,N1) & inv(N1,N2) & comp(N2,N1,N3) & nsubset(N1,N3)
,2000,_CONSTR,_RES).

get_time(Tend).

