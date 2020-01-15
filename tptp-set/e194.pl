use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET240-6.p
% Restriction alternate definition 3
restrict(Xr,X,Y,M1) & [U,V] in M1 & U nin X

,2000,_CONSTR,_RES).

get_time(Tend).

