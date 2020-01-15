use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO016-1.p
% Relating product and sum (X * Y = Z -> X + Z = X)
inters(X,Y,Z) & nun(X,Z,X)


,2000,_CONSTR,_RES).

get_time(Tend).

