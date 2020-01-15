use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO005-1.p
% Addition is bounded (X + 1 = 1)
subset(X,U) & nun(X,U,U)


,2000,_CONSTR,_RES).

get_time(Tend).

