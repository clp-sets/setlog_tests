use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET281-6.p
% Domain relation is a function
% weaker form; the true goal is not expressible in {log}
dom(R,X) & dom(R,Y) & X neq Y

,2000,_CONSTR,_RES).

get_time(Tend).

