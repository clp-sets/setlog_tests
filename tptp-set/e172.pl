use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET218-6.p
% Cross product distributes over union 1
un(X,Y,M1) & nun(cp(X,Z),cp(Y,Z),cp(M1,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

