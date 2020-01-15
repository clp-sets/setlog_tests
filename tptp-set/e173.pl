use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET219-6.p
% Cross product distributes over union 2
un(Y,Z,M1) & nun(cp(X,Y),cp(X,Z),cp(X,M1))

,2000,_CONSTR,_RES).

get_time(Tend).

