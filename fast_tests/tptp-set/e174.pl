use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET220-6.p
% Cross product distributes over intersection 1
inters(X,Y,M1) & ninters(cp(X,Z),cp(Y,Z),cp(M1,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

