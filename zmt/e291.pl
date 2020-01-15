use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% compMonotone
subset(Q_,Q) & subset(R_,R) & comp(Q_,R_,N1) & comp(Q,R,N2) & subset(N1,N2) & Q_ neq {} & Q neq {} & R_ neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

