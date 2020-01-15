use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET296-6.p
% Domain of inverse
inv(X,M1) & dom(M1,M2) & nran(X,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

