use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% domOverride
oplus(Q,R,N1) & dom(N1,N2) & dom(Q,N3) & dom(R,N4) & un(N3,N4,N2) & Q neq {} & R neq {}
,2000,_CONSTR,_RES).

get_time(Tend).


