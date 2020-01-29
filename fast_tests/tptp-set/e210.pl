use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET257-6.p
% Restriction property 5
nrestrict(cp(X,Y),X,Y,cp(X,Y))

,2000,_CONSTR,_RES).

get_time(Tend).

