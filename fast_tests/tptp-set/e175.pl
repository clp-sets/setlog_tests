use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET221-6.p
% Cross product distributes over intersection 2
inters(Y,Z,M1) & ninters(cp(X,Y),cp(X,Z),cp(X,M1))

,2000,_CONSTR,_RES).

get_time(Tend).

