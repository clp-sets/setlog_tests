use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pfunDef 1
pfun(R) & ran(R,N1) & inv(R,N2) & comp(N2,R,N3) & id(N1,N4) & subset(N3,N4) & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

