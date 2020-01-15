use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET299-6.p
% Inverse of product
ninv(cp(X,Y),cp(Y,X))

,2000,_CONSTR,_RES).

get_time(Tend).

