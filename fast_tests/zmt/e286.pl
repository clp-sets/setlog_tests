use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% easyDomComp
ran(Q,N1) & dom(R,N2) & subset(N1,N2) & comp(Q,R,N3) & dom(N3,N4) & dom(Q,N4) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

