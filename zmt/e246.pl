use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ranComp
comp(Q,R,N1) & ran(N1,N2) & ran(Q,N3) & rimg(R,N3,N2) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

