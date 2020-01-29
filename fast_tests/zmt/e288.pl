use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% easyRanComp
dom(R,N1) & ran(Q,N2) & subset(N1,N2) & comp(Q,R,N3) & ran(N3,N4) & ran(R,N4) & R neq {} & Q neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

