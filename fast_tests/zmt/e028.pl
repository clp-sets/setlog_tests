use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ranCompSmaller
comp(Q,R,N1) & ran(N1,N2) & ran(R,N3) & nsubset(N2,N3)
,2000,_CONSTR,_RES).

get_time(Tend).

