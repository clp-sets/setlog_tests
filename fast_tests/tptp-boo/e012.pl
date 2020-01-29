use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO008-1.p
% associativity union
un(X,Y,M1) & un(M1,Z,M2) & un(Y,Z,M3) & nun(X,M3,M2)


,2000,_CONSTR,_RES).

get_time(Tend).

