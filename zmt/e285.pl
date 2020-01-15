use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domCompSmaller
comp(Q,R,N1) & dom(N1,N2) & dom(Q,N3) & subset(N2,N3) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

