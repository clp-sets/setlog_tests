use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET242-6.p
% Restriction alternate definition 5
Z in Xr & X in cp(X,Y) & restrict(Xr,X,Y,M1) & Z nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

