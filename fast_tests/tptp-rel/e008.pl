use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL005+1.p
% Converse distributes over meet
un(X0,X1,M1) & inv(M1,M2) & inv(X0,M3) & inv(X1,M4) & nun(M3,M4,M2)


,2000,_CONSTR,_RES).

get_time(Tend).
