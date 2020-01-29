use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ranCup
un(Q,R,N1) & ran(N1,N2) & ran(Q,N3) & ran(R,N4) & un(N3,N4,N2) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

