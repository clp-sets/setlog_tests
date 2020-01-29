use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO004-1.p
% Addition is idempotent (X + X = X)
nun(X,X,X)


,2000,_CONSTR,_RES).

get_time(Tend).

