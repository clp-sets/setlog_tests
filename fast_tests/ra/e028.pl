use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
[X1,Y1] in A & [Y1,X1] in CA & un(A,CA,cp(X,Y)) & disj(A,CA)


,2000,_CONSTR,_RES).

get_time(Tend).

