use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% ==> (1)
dres(X,R,M1) & rres(M1,X,M2) & ninters(R,cp(X,X),M2)

,2000,_CONSTR,_RES).

get_time(Tend).

