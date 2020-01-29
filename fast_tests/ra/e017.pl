use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
dom(A,X) & ran(A,Y) & nsubset(A,cp(X,Y))


,2000,_CONSTR,_RES).

get_time(Tend).

