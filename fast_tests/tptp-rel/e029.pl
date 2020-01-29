use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL025+1.p
% For subidentities converse is redundant
id(M1,M2) & subset(X0,M2) & ninv(X0,X0)

,2000,_CONSTR,_RES).

get_time(Tend).

