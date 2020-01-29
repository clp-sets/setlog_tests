use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET241-6.p
% Restriction alternate definition 4
restrict(Xr,X,Y,M1) & [U,V] in M1 & V nin Y
,2000,_CONSTR,_RES).

get_time(Tend).

