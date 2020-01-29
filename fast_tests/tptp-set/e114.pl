use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET161-6.p
% Commutativity outside union
un(Y,Z,M1) & un(X,M1,M2) & un(X,Z,M3) & nun(Y,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

