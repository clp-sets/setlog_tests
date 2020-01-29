use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET204-6.p
% Cross product property 2
[U,V] in cp(X,Y) & [V,U] nin cp(Y,X)

,2000,_CONSTR,_RES).

get_time(Tend).

